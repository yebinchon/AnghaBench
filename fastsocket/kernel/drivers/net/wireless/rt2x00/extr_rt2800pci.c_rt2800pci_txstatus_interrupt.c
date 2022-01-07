
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct rt2x00_dev {int txstatus_tasklet; int txstatus_fifo; TYPE_2__* ops; } ;
struct TYPE_4__ {TYPE_1__* tx; } ;
struct TYPE_3__ {int entry_num; } ;


 int TX_STA_FIFO ;
 int TX_STA_FIFO_VALID ;
 int kfifo_put (int *,int *) ;
 int rt2x00_get_field32 (int ,int ) ;
 int rt2x00_warn (struct rt2x00_dev*,char*) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ,int *) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void rt2800pci_txstatus_interrupt(struct rt2x00_dev *rt2x00dev)
{
 u32 status;
 int i;
 for (i = 0; i < rt2x00dev->ops->tx->entry_num; i++) {
  rt2x00mmio_register_read(rt2x00dev, TX_STA_FIFO, &status);

  if (!rt2x00_get_field32(status, TX_STA_FIFO_VALID))
   break;

  if (!kfifo_put(&rt2x00dev->txstatus_fifo, &status)) {
   rt2x00_warn(rt2x00dev, "TX status FIFO overrun, drop tx status report\n");
   break;
  }
 }


 tasklet_schedule(&rt2x00dev->txstatus_tasklet);
}
