
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_list {struct page_list* next; } ;
struct dm_mem_cache_object {struct page_list* pl; } ;
struct dm_mem_cache_client {unsigned int chunks; unsigned int pages_per_chunk; int lock; struct page_list* free_list; } ;


 int BUG_ON (int) ;
 int local_irq_disable () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void alloc_chunks(struct dm_mem_cache_client *cl,
    struct dm_mem_cache_object *obj)
{
 unsigned chunks = cl->chunks;
 unsigned long flags;

 local_irq_save(flags);
 local_irq_disable();
 while (chunks--) {
  unsigned p = cl->pages_per_chunk;

  obj[chunks].pl = ((void*)0);

  while (p--) {
   struct page_list *pl;


   spin_lock(&cl->lock);
   pl = cl->free_list;
   BUG_ON(!pl);
   cl->free_list = pl->next;
   spin_unlock(&cl->lock);

   pl->next = obj[chunks].pl;
   obj[chunks].pl = pl;
  }
 }

 local_irq_restore(flags);
}
