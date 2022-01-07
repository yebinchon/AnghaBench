
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct queue_entry {TYPE_2__* queue; TYPE_1__* skb; } ;
struct TYPE_4__ {int usb_maxpacket; } ;
struct TYPE_3__ {int len; } ;


 int roundup (int ,int) ;

__attribute__((used)) static int rt2500usb_get_tx_data_len(struct queue_entry *entry)
{
 int length;





 length = roundup(entry->skb->len, 2);
 length += (2 * !(length % entry->queue->usb_maxpacket));

 return length;
}
