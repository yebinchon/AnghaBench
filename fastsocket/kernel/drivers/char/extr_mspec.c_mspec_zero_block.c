
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BTE_WACQUIRE ;
 int BTE_ZERO_FILL ;
 int FETCHOP_LOAD ;
 int FETCHOP_LOAD_OP (void*,int ) ;
 int FETCHOP_VAR_SIZE ;
 int SH2_AMO_CACHE_ENTRIES ;
 scalar_t__ TO_AMO (int ) ;
 unsigned long __IA64_UNCACHED_OFFSET ;
 int __pa (unsigned long) ;
 int bte_copy (int ,unsigned long,int,int,int *) ;
 int get_node_number (int ) ;
 scalar_t__ is_shub2 () ;
 scalar_t__ is_sn2 ;
 int memset (char*,int ,int) ;
 int nasid_to_cnodeid (int ) ;
 int * scratch_page ;

__attribute__((used)) static inline int
mspec_zero_block(unsigned long addr, int len)
{
 int status;

 if (is_sn2) {
  if (is_shub2()) {
   int nid;
   void *p;
   int i;

   nid = nasid_to_cnodeid(get_node_number(__pa(addr)));
   p = (void *)TO_AMO(scratch_page[nid]);

   for (i=0; i < SH2_AMO_CACHE_ENTRIES; i++) {
    FETCHOP_LOAD_OP(p, FETCHOP_LOAD);
    p += FETCHOP_VAR_SIZE;
   }
  }

  status = bte_copy(0, addr & ~__IA64_UNCACHED_OFFSET, len,
      BTE_WACQUIRE | BTE_ZERO_FILL, ((void*)0));
 } else {
  memset((char *) addr, 0, len);
  status = 0;
 }
 return status;
}
