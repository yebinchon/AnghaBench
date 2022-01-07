
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int H_AVPN ;
 unsigned long H_NOT_FOUND ;
 unsigned long H_SUCCESS ;
 unsigned long hpte_encode_avpn (unsigned long,int,int) ;
 unsigned long plpar_pte_remove (int ,unsigned long,unsigned long,unsigned long*,unsigned long*) ;
 int pr_devel (char*,unsigned long,unsigned long,int,int) ;

__attribute__((used)) static void pSeries_lpar_hpte_invalidate(unsigned long slot, unsigned long va,
      int psize, int ssize, int local)
{
 unsigned long want_v;
 unsigned long lpar_rc;
 unsigned long dummy1, dummy2;

 pr_devel("    inval : slot=%lx, va=%016lx, psize: %d, local: %d\n",
   slot, va, psize, local);

 want_v = hpte_encode_avpn(va, psize, ssize);
 lpar_rc = plpar_pte_remove(H_AVPN, slot, want_v, &dummy1, &dummy2);
 if (lpar_rc == H_NOT_FOUND)
  return;

 BUG_ON(lpar_rc != H_SUCCESS);
}
