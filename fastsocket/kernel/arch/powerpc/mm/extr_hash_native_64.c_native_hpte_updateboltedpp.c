
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_pte {unsigned long r; } ;


 unsigned long HPTE_R_N ;
 unsigned long HPTE_R_PP ;
 unsigned long get_kernel_vsid (unsigned long,int) ;
 unsigned long hpt_va (unsigned long,unsigned long,int) ;
 struct hash_pte* htab_address ;
 long native_hpte_find (unsigned long,int,int) ;
 int panic (char*) ;
 int tlbie (unsigned long,int,int,int ) ;

__attribute__((used)) static void native_hpte_updateboltedpp(unsigned long newpp, unsigned long ea,
           int psize, int ssize)
{
 unsigned long vsid, va;
 long slot;
 struct hash_pte *hptep;

 vsid = get_kernel_vsid(ea, ssize);
 va = hpt_va(ea, vsid, ssize);

 slot = native_hpte_find(va, psize, ssize);
 if (slot == -1)
  panic("could not find page to bolt\n");
 hptep = htab_address + slot;


 hptep->r = (hptep->r & ~(HPTE_R_PP | HPTE_R_N)) |
  (newpp & (HPTE_R_PP | HPTE_R_N));


 tlbie(va, psize, ssize, 0);
}
