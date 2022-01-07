
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_8__ {int ctrl_reg; int lock; int tx_state; TYPE_2__* p_dev; int hw_state; int hdev; } ;
typedef TYPE_3__ bluecard_info_t ;
struct TYPE_6__ {unsigned int BasePort1; } ;
struct TYPE_7__ {TYPE_1__ io; } ;


 int BUG_ON (int) ;
 int CARD_READY ;
 int IRQ_HANDLED ;
 scalar_t__ REG_COMMAND ;
 int REG_COMMAND_RX_BUF_ONE ;
 int REG_COMMAND_RX_BUF_TWO ;
 scalar_t__ REG_CONTROL ;
 int REG_CONTROL_INTERRUPT ;
 scalar_t__ REG_INTERRUPT ;
 int XMIT_BUF_ONE_READY ;
 int XMIT_BUF_TWO_READY ;
 int bluecard_receive (TYPE_3__*,int) ;
 int bluecard_write_wakeup (TYPE_3__*) ;
 unsigned char inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static irqreturn_t bluecard_interrupt(int irq, void *dev_inst)
{
 bluecard_info_t *info = dev_inst;
 unsigned int iobase;
 unsigned char reg;

 BUG_ON(!info->hdev);

 if (!test_bit(CARD_READY, &(info->hw_state)))
  return IRQ_HANDLED;

 iobase = info->p_dev->io.BasePort1;

 spin_lock(&(info->lock));


 info->ctrl_reg &= ~REG_CONTROL_INTERRUPT;
 outb(info->ctrl_reg, iobase + REG_CONTROL);

 reg = inb(iobase + REG_INTERRUPT);

 if ((reg != 0x00) && (reg != 0xff)) {

  if (reg & 0x04) {
   bluecard_receive(info, 0x00);
   outb(0x04, iobase + REG_INTERRUPT);
   outb(REG_COMMAND_RX_BUF_ONE, iobase + REG_COMMAND);
  }

  if (reg & 0x08) {
   bluecard_receive(info, 0x10);
   outb(0x08, iobase + REG_INTERRUPT);
   outb(REG_COMMAND_RX_BUF_TWO, iobase + REG_COMMAND);
  }

  if (reg & 0x01) {
   set_bit(XMIT_BUF_ONE_READY, &(info->tx_state));
   outb(0x01, iobase + REG_INTERRUPT);
   bluecard_write_wakeup(info);
  }

  if (reg & 0x02) {
   set_bit(XMIT_BUF_TWO_READY, &(info->tx_state));
   outb(0x02, iobase + REG_INTERRUPT);
   bluecard_write_wakeup(info);
  }

 }


 info->ctrl_reg |= REG_CONTROL_INTERRUPT;
 outb(info->ctrl_reg, iobase + REG_CONTROL);

 spin_unlock(&(info->lock));

 return IRQ_HANDLED;
}
