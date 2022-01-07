
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 unsigned long get_kernel_vsid (unsigned long,int) ;
 unsigned long hpt_va (unsigned long,unsigned long,int) ;
 unsigned long pSeries_lpar_hpte_find (unsigned long,int,int) ;
 int pSeries_lpar_hpte_invalidate (unsigned long,unsigned long,int,int,int ) ;

__attribute__((used)) static void pSeries_lpar_hpte_removebolted(unsigned long ea,
        int psize, int ssize)
{
 unsigned long slot, vsid, va;

 vsid = get_kernel_vsid(ea, ssize);
 va = hpt_va(ea, vsid, ssize);

 slot = pSeries_lpar_hpte_find(va, psize, ssize);
 BUG_ON(slot == -1);

 pSeries_lpar_hpte_invalidate(slot, va, psize, ssize, 0);
}
