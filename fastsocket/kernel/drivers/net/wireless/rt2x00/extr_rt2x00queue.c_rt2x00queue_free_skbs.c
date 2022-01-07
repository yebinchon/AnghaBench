
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data_queue {unsigned int limit; int * entries; } ;


 int rt2x00queue_free_skb (int *) ;

__attribute__((used)) static void rt2x00queue_free_skbs(struct data_queue *queue)
{
 unsigned int i;

 if (!queue->entries)
  return;

 for (i = 0; i < queue->limit; i++) {
  rt2x00queue_free_skb(&queue->entries[i]);
 }
}
