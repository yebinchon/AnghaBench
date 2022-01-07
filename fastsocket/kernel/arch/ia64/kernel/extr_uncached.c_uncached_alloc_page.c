
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uncached_pool {int * pool; } ;


 int MAX_NUMNODES ;
 int N_HIGH_MEMORY ;
 int PAGE_SIZE ;
 unsigned long gen_pool_alloc (int *,int) ;
 int node_state (int,int ) ;
 int numa_node_id () ;
 scalar_t__ uncached_add_chunk (struct uncached_pool*,int) ;
 struct uncached_pool* uncached_pools ;
 scalar_t__ unlikely (int) ;

unsigned long uncached_alloc_page(int starting_nid, int n_pages)
{
 unsigned long uc_addr;
 struct uncached_pool *uc_pool;
 int nid;

 if (unlikely(starting_nid >= MAX_NUMNODES))
  return 0;

 if (starting_nid < 0)
  starting_nid = numa_node_id();
 nid = starting_nid;

 do {
  if (!node_state(nid, N_HIGH_MEMORY))
   continue;
  uc_pool = &uncached_pools[nid];
  if (uc_pool->pool == ((void*)0))
   continue;
  do {
   uc_addr = gen_pool_alloc(uc_pool->pool,
       n_pages * PAGE_SIZE);
   if (uc_addr != 0)
    return uc_addr;
  } while (uncached_add_chunk(uc_pool, nid) == 0);

 } while ((nid = (nid + 1) % MAX_NUMNODES) != starting_nid);

 return 0;
}
