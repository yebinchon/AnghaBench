
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_10__ {int lock; int tx_state; TYPE_3__* hdev; TYPE_2__* p_dev; } ;
typedef TYPE_4__ bt3c_info_t ;
struct TYPE_9__ {int name; } ;
struct TYPE_7__ {unsigned int BasePort1; } ;
struct TYPE_8__ {TYPE_1__ io; } ;


 int BT_ERR (char*,int) ;
 int BT_INFO (char*,int ,char*) ;
 int BUG_ON (int) ;
 scalar_t__ CONTROL ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int XMIT_SENDING ;
 int bt3c_io_write (unsigned int,int,int) ;
 int bt3c_read (unsigned int,int) ;
 int bt3c_receive (TYPE_4__*) ;
 int bt3c_write_wakeup (TYPE_4__*) ;
 int clear_bit (int ,int *) ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t bt3c_interrupt(int irq, void *dev_inst)
{
 bt3c_info_t *info = dev_inst;
 unsigned int iobase;
 int iir;
 irqreturn_t r = IRQ_NONE;

 BUG_ON(!info->hdev);

 iobase = info->p_dev->io.BasePort1;

 spin_lock(&(info->lock));

 iir = inb(iobase + CONTROL);
 if (iir & 0x80) {
  int stat = bt3c_read(iobase, 0x7001);

  if ((stat & 0xff) == 0x7f) {
   BT_ERR("Very strange (stat=0x%04x)", stat);
  } else if ((stat & 0xff) != 0xff) {
   if (stat & 0x0020) {
    int status = bt3c_read(iobase, 0x7002) & 0x10;
    BT_INFO("%s: Antenna %s", info->hdev->name,
       status ? "out" : "in");
   }
   if (stat & 0x0001)
    bt3c_receive(info);
   if (stat & 0x0002) {

    clear_bit(XMIT_SENDING, &(info->tx_state));
    bt3c_write_wakeup(info);
   }

   bt3c_io_write(iobase, 0x7001, 0x0000);

   outb(iir, iobase + CONTROL);
  }
  r = IRQ_HANDLED;
 }

 spin_unlock(&(info->lock));

 return r;
}
