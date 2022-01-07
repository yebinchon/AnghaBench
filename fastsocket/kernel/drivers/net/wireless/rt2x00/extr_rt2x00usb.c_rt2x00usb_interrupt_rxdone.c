
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {scalar_t__ actual_length; scalar_t__ status; scalar_t__ context; } ;
struct rt2x00_dev {int rxdone_work; int workqueue; } ;
struct queue_entry {int flags; TYPE_1__* queue; } ;
struct TYPE_2__ {scalar_t__ desc_size; struct rt2x00_dev* rt2x00dev; } ;


 int ENTRY_DATA_IO_FAILED ;
 int ENTRY_OWNER_DEVICE_DATA ;
 int queue_work (int ,int *) ;
 int rt2x00lib_dmadone (struct queue_entry*) ;
 int set_bit (int ,int *) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void rt2x00usb_interrupt_rxdone(struct urb *urb)
{
 struct queue_entry *entry = (struct queue_entry *)urb->context;
 struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;

 if (!test_and_clear_bit(ENTRY_OWNER_DEVICE_DATA, &entry->flags))
  return;




 rt2x00lib_dmadone(entry);






 if (urb->actual_length < entry->queue->desc_size || urb->status)
  set_bit(ENTRY_DATA_IO_FAILED, &entry->flags);





 queue_work(rt2x00dev->workqueue, &rt2x00dev->rxdone_work);
}
