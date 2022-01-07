
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uncached_pool {int nchunks_added; int add_chunk_mutex; int pool; int status; } ;
struct page {int dummy; } ;


 int ClearPageUncached (struct page*) ;
 int GFP_KERNEL ;
 int GFP_THISNODE ;
 scalar_t__ IA64_GRANULE_SHIFT ;
 int IA64_GRANULE_SIZE ;
 int MAX_CONVERTED_CHUNKS_PER_NODE ;
 unsigned long PAGE_OFFSET ;
 scalar_t__ PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PAL_STATUS_SUCCESS ;
 int PAL_VISIBILITY_OK ;
 int PAL_VISIBILITY_OK_REMOTE_NEEDED ;
 int PAL_VISIBILITY_PHYSICAL ;
 int SetPageUncached (struct page*) ;
 int __GFP_ZERO ;
 unsigned long __IA64_UNCACHED_OFFSET ;
 struct page* alloc_pages_exact_node (int,int,scalar_t__) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int flush_icache_range (unsigned long,unsigned long) ;
 int flush_tlb_kernel_range (unsigned long,unsigned long) ;
 int free_pages (unsigned long,scalar_t__) ;
 int gen_pool_add (int ,unsigned long,int,int) ;
 int ia64_pal_mc_drain () ;
 int ia64_pal_prefetch_visibility (int ) ;
 scalar_t__ ia64_platform_is (char*) ;
 int local_flush_tlb_all () ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ page_address (struct page*) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int smp_call_function (int ,struct uncached_pool*,int) ;
 int sn_flush_all_caches (unsigned long,int) ;
 int uncached_ipi_mc_drain ;
 int uncached_ipi_visibility ;

__attribute__((used)) static int uncached_add_chunk(struct uncached_pool *uc_pool, int nid)
{
 struct page *page;
 int status, i, nchunks_added = uc_pool->nchunks_added;
 unsigned long c_addr, uc_addr;

 if (mutex_lock_interruptible(&uc_pool->add_chunk_mutex) != 0)
  return -1;

 if (uc_pool->nchunks_added > nchunks_added) {

  mutex_unlock(&uc_pool->add_chunk_mutex);
  return 0;
 }

 if (uc_pool->nchunks_added >= MAX_CONVERTED_CHUNKS_PER_NODE) {
  mutex_unlock(&uc_pool->add_chunk_mutex);
  return -1;
 }



 page = alloc_pages_exact_node(nid,
    GFP_KERNEL | __GFP_ZERO | GFP_THISNODE,
    IA64_GRANULE_SHIFT-PAGE_SHIFT);
 if (!page) {
  mutex_unlock(&uc_pool->add_chunk_mutex);
  return -1;
 }



 c_addr = (unsigned long)page_address(page);
 uc_addr = c_addr - PAGE_OFFSET + __IA64_UNCACHED_OFFSET;






 for (i = 0; i < (IA64_GRANULE_SIZE / PAGE_SIZE); i++)
  SetPageUncached(&page[i]);

 flush_tlb_kernel_range(uc_addr, uc_addr + IA64_GRANULE_SIZE);

 status = ia64_pal_prefetch_visibility(PAL_VISIBILITY_PHYSICAL);
 if (status == PAL_VISIBILITY_OK_REMOTE_NEEDED) {
  atomic_set(&uc_pool->status, 0);
  status = smp_call_function(uncached_ipi_visibility, uc_pool, 1);
  if (status || atomic_read(&uc_pool->status))
   goto failed;
 } else if (status != PAL_VISIBILITY_OK)
  goto failed;

 preempt_disable();

 if (ia64_platform_is("sn2"))
  sn_flush_all_caches(uc_addr, IA64_GRANULE_SIZE);
 else
  flush_icache_range(uc_addr, uc_addr + IA64_GRANULE_SIZE);


 local_flush_tlb_all();

 preempt_enable();

 status = ia64_pal_mc_drain();
 if (status != PAL_STATUS_SUCCESS)
  goto failed;
 atomic_set(&uc_pool->status, 0);
 status = smp_call_function(uncached_ipi_mc_drain, uc_pool, 1);
 if (status || atomic_read(&uc_pool->status))
  goto failed;





 status = gen_pool_add(uc_pool->pool, uc_addr, IA64_GRANULE_SIZE, nid);
 if (status)
  goto failed;

 uc_pool->nchunks_added++;
 mutex_unlock(&uc_pool->add_chunk_mutex);
 return 0;


failed:
 for (i = 0; i < (IA64_GRANULE_SIZE / PAGE_SIZE); i++)
  ClearPageUncached(&page[i]);

 free_pages(c_addr, IA64_GRANULE_SHIFT-PAGE_SHIFT);
 mutex_unlock(&uc_pool->add_chunk_mutex);
 return -1;
}
