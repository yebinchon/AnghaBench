
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct urb {scalar_t__ status; scalar_t__ context; } ;
struct rt2x00_dev {int txdone_work; int workqueue; int txstatus_fifo; int cap_flags; TYPE_3__* ops; } ;
struct queue_entry {int flags; TYPE_1__* queue; } ;
struct TYPE_6__ {TYPE_2__* lib; } ;
struct TYPE_5__ {int (* tx_dma_done ) (struct queue_entry*) ;} ;
struct TYPE_4__ {struct rt2x00_dev* rt2x00dev; } ;


 int ENTRY_DATA_IO_FAILED ;
 int ENTRY_OWNER_DEVICE_DATA ;
 int REQUIRE_TXSTATUS_FIFO ;
 int kfifo_is_empty (int *) ;
 int queue_work (int ,int *) ;
 int rt2x00lib_dmadone (struct queue_entry*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct queue_entry*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void rt2x00usb_interrupt_txdone(struct urb *urb)
{
 struct queue_entry *entry = (struct queue_entry *)urb->context;
 struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;

 if (!test_bit(ENTRY_OWNER_DEVICE_DATA, &entry->flags))
  return;



 if (urb->status)
  set_bit(ENTRY_DATA_IO_FAILED, &entry->flags);



 rt2x00lib_dmadone(entry);

 if (rt2x00dev->ops->lib->tx_dma_done)
  rt2x00dev->ops->lib->tx_dma_done(entry);




 if (!test_bit(REQUIRE_TXSTATUS_FIFO, &rt2x00dev->cap_flags) ||
     !kfifo_is_empty(&rt2x00dev->txstatus_fifo))
  queue_work(rt2x00dev->workqueue, &rt2x00dev->txdone_work);
}
