
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct queue_entry {TYPE_1__* skb; } ;
struct TYPE_2__ {int len; } ;


 int roundup (int ,int) ;

__attribute__((used)) static int rt2800usb_get_tx_data_len(struct queue_entry *entry)
{
 return roundup(entry->skb->len, 4) + 4;
}
