
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_entry {unsigned int entry_idx; int priv_data; int * skb; struct data_queue* queue; scalar_t__ flags; } ;
struct data_queue_desc {unsigned int entry_num; int priv_size; int winfo_size; int desc_size; int data_size; } ;
struct data_queue {unsigned int limit; struct queue_entry* entries; int winfo_size; int desc_size; int data_size; int threshold; } ;


 int DIV_ROUND_UP (unsigned int,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int QUEUE_ENTRY_PRIV_OFFSET (struct queue_entry*,unsigned int,unsigned int,int,int) ;
 struct queue_entry* kcalloc (unsigned int,unsigned int,int ) ;
 int rt2x00queue_reset (struct data_queue*) ;

__attribute__((used)) static int rt2x00queue_alloc_entries(struct data_queue *queue,
         const struct data_queue_desc *qdesc)
{
 struct queue_entry *entries;
 unsigned int entry_size;
 unsigned int i;

 rt2x00queue_reset(queue);

 queue->limit = qdesc->entry_num;
 queue->threshold = DIV_ROUND_UP(qdesc->entry_num, 10);
 queue->data_size = qdesc->data_size;
 queue->desc_size = qdesc->desc_size;
 queue->winfo_size = qdesc->winfo_size;




 entry_size = sizeof(*entries) + qdesc->priv_size;
 entries = kcalloc(queue->limit, entry_size, GFP_KERNEL);
 if (!entries)
  return -ENOMEM;





 for (i = 0; i < queue->limit; i++) {
  entries[i].flags = 0;
  entries[i].queue = queue;
  entries[i].skb = ((void*)0);
  entries[i].entry_idx = i;
  entries[i].priv_data =
      (((char *)(entries)) + ((queue->limit) * (sizeof(*entries))) + ((i) * (qdesc->priv_size)));

 }



 queue->entries = entries;

 return 0;
}
