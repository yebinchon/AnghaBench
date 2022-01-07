
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct queue_entry {TYPE_1__* queue; scalar_t__ flags; } ;
struct TYPE_2__ {scalar_t__ qid; } ;


 scalar_t__ QID_RX ;
 int rt2x00usb_kick_rx_entry (struct queue_entry*,int *) ;

void rt2x00usb_clear_entry(struct queue_entry *entry)
{
 entry->flags = 0;

 if (entry->queue->qid == QID_RX)
  rt2x00usb_kick_rx_entry(entry, ((void*)0));
}
