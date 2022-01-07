
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gen_pool {int dummy; } ;
struct TYPE_2__ {struct gen_pool* pool; } ;


 int PAGE_SIZE ;
 unsigned long __IA64_UNCACHED_OFFSET ;
 int gen_pool_free (struct gen_pool*,unsigned long,int) ;
 int paddr_to_nid (unsigned long) ;
 int panic (char*,unsigned long) ;
 TYPE_1__* uncached_pools ;
 scalar_t__ unlikely (int ) ;

void uncached_free_page(unsigned long uc_addr, int n_pages)
{
 int nid = paddr_to_nid(uc_addr - __IA64_UNCACHED_OFFSET);
 struct gen_pool *pool = uncached_pools[nid].pool;

 if (unlikely(pool == ((void*)0)))
  return;

 if ((uc_addr & (0XFUL << 60)) != __IA64_UNCACHED_OFFSET)
  panic("uncached_free_page invalid address %lx\n", uc_addr);

 gen_pool_free(pool, uc_addr, n_pages * PAGE_SIZE);
}
