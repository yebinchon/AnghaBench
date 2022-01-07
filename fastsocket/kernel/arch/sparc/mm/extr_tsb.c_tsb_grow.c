
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tsb {int dummy; } ;
struct TYPE_4__ {int lock; TYPE_1__* tsb_block; } ;
struct mm_struct {TYPE_2__ context; } ;
typedef int gfp_t ;
struct TYPE_3__ {unsigned long tsb_rss_limit; int tsb_reg_val; int tsb_nentries; struct tsb* tsb; } ;


 int GFP_KERNEL ;
 unsigned long MAX_ORDER ;
 unsigned long PAGE_SIZE ;
 int __GFP_NORETRY ;
 int __GFP_NOWARN ;
 unsigned long __pa (unsigned long) ;
 scalar_t__ cheetah_plus ;
 scalar_t__ hypervisor ;
 struct tsb* kmem_cache_alloc_node (int ,int,int ) ;
 int kmem_cache_free (int ,struct tsb*) ;
 int numa_node_id () ;
 int preempt_disable () ;
 int preempt_enable () ;
 int setup_tsb_params (struct mm_struct*,unsigned long,unsigned long) ;
 int smp_tsb_sync (struct mm_struct*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ tlb_type ;
 int * tsb_caches ;
 int tsb_context_switch (struct mm_struct*) ;
 int tsb_init (struct tsb*,unsigned long) ;
 unsigned long tsb_size_to_rss_limit (unsigned long) ;
 scalar_t__ unlikely (int) ;

void tsb_grow(struct mm_struct *mm, unsigned long tsb_index, unsigned long rss)
{
 unsigned long max_tsb_size = 1 * 1024 * 1024;
 unsigned long new_size, old_size, flags;
 struct tsb *old_tsb, *new_tsb;
 unsigned long new_cache_index, old_cache_index;
 unsigned long new_rss_limit;
 gfp_t gfp_flags;

 if (max_tsb_size > (PAGE_SIZE << MAX_ORDER))
  max_tsb_size = (PAGE_SIZE << MAX_ORDER);

 new_cache_index = 0;
 for (new_size = 8192; new_size < max_tsb_size; new_size <<= 1UL) {
  new_rss_limit = tsb_size_to_rss_limit(new_size);
  if (new_rss_limit > rss)
   break;
  new_cache_index++;
 }

 if (new_size == max_tsb_size)
  new_rss_limit = ~0UL;

retry_tsb_alloc:
 gfp_flags = GFP_KERNEL;
 if (new_size > (PAGE_SIZE * 2))
  gfp_flags = __GFP_NOWARN | __GFP_NORETRY;

 new_tsb = kmem_cache_alloc_node(tsb_caches[new_cache_index],
     gfp_flags, numa_node_id());
 if (unlikely(!new_tsb)) {





  if (mm->context.tsb_block[tsb_index].tsb == ((void*)0) &&
      new_cache_index > 0) {
   new_cache_index = 0;
   new_size = 8192;
   new_rss_limit = ~0UL;
   goto retry_tsb_alloc;
  }




  if (mm->context.tsb_block[tsb_index].tsb != ((void*)0))
   mm->context.tsb_block[tsb_index].tsb_rss_limit = ~0UL;
  return;
 }


 tsb_init(new_tsb, new_size);
 spin_lock_irqsave(&mm->context.lock, flags);

 old_tsb = mm->context.tsb_block[tsb_index].tsb;
 old_cache_index =
  (mm->context.tsb_block[tsb_index].tsb_reg_val & 0x7UL);
 old_size = (mm->context.tsb_block[tsb_index].tsb_nentries *
      sizeof(struct tsb));






 if (unlikely(old_tsb &&
       (rss < mm->context.tsb_block[tsb_index].tsb_rss_limit))) {
  spin_unlock_irqrestore(&mm->context.lock, flags);

  kmem_cache_free(tsb_caches[new_cache_index], new_tsb);
  return;
 }

 mm->context.tsb_block[tsb_index].tsb_rss_limit = new_rss_limit;

 if (old_tsb) {
  extern void copy_tsb(unsigned long old_tsb_base,
         unsigned long old_tsb_size,
         unsigned long new_tsb_base,
         unsigned long new_tsb_size);
  unsigned long old_tsb_base = (unsigned long) old_tsb;
  unsigned long new_tsb_base = (unsigned long) new_tsb;

  if (tlb_type == cheetah_plus || tlb_type == hypervisor) {
   old_tsb_base = __pa(old_tsb_base);
   new_tsb_base = __pa(new_tsb_base);
  }
  copy_tsb(old_tsb_base, old_size, new_tsb_base, new_size);
 }

 mm->context.tsb_block[tsb_index].tsb = new_tsb;
 setup_tsb_params(mm, tsb_index, new_size);

 spin_unlock_irqrestore(&mm->context.lock, flags);




 if (old_tsb) {

  tsb_context_switch(mm);


  preempt_disable();
  smp_tsb_sync(mm);
  preempt_enable();


  kmem_cache_free(tsb_caches[old_cache_index], old_tsb);
 }
}
