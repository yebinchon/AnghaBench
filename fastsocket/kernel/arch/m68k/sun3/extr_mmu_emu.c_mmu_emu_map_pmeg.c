
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char CONTEXTS_NUM ;
 int PAGE_OFFSET ;
 unsigned char SUN3_INVALID_PMEG ;
 int SUN3_PAGE_SYSTEM ;
 int SUN3_PMEG_MASK ;
 int SUN3_PMEG_SIZE ;
 scalar_t__ SUN3_PTE_SIZE ;
 int* pmeg_alloc ;
 int* pmeg_ctx ;
 int* pmeg_vaddr ;
 int printk (char*,unsigned char,int,int) ;
 int sun3_put_context (int) ;
 int sun3_put_pte (int,int ) ;
 int sun3_put_segmap (int,unsigned char) ;

inline void mmu_emu_map_pmeg (int context, int vaddr)
{
 static unsigned char curr_pmeg = 128;
 int i;


 vaddr &= ~SUN3_PMEG_MASK;


 while (pmeg_alloc[curr_pmeg] == 2)
  ++curr_pmeg;
 if (pmeg_alloc[curr_pmeg] == 1) {
  sun3_put_context(pmeg_ctx[curr_pmeg]);
  sun3_put_segmap (pmeg_vaddr[curr_pmeg], SUN3_INVALID_PMEG);
  sun3_put_context(context);
 }



 if(vaddr >= PAGE_OFFSET) {

  unsigned char i;

  for(i = 0; i < CONTEXTS_NUM; i++) {
   sun3_put_context(i);
   sun3_put_segmap (vaddr, curr_pmeg);
  }
  sun3_put_context(context);
  pmeg_alloc[curr_pmeg] = 2;
  pmeg_ctx[curr_pmeg] = 0;

 }
 else {
  pmeg_alloc[curr_pmeg] = 1;
  pmeg_ctx[curr_pmeg] = context;
  sun3_put_segmap (vaddr, curr_pmeg);

 }
 pmeg_vaddr[curr_pmeg] = vaddr;


 for (i=0; i<SUN3_PMEG_SIZE; i+=SUN3_PTE_SIZE)
  sun3_put_pte (vaddr + i, SUN3_PAGE_SYSTEM);


 ++curr_pmeg;
}
