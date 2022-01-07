
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_entry {int * skb; } ;


 int dev_kfree_skb_any (int *) ;
 int rt2x00queue_unmap_skb (struct queue_entry*) ;

void rt2x00queue_free_skb(struct queue_entry *entry)
{
 if (!entry->skb)
  return;

 rt2x00queue_unmap_skb(entry);
 dev_kfree_skb_any(entry->skb);
 entry->skb = ((void*)0);
}
