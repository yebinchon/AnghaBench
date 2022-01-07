
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_pte {int v; } ;


 scalar_t__ HPTE_V_COMPARE (int,unsigned long) ;
 int HPTE_V_VALID ;
 int HvCallHpt_get (struct hash_pte*,unsigned long) ;
 int HvCallHpt_setPp (unsigned long,unsigned long) ;
 int MMU_PAGE_4K ;
 int MMU_SEGSIZE_256M ;
 unsigned long hpte_encode_v (unsigned long,int ,int ) ;
 int iSeries_hlock (unsigned long) ;
 int iSeries_hunlock (unsigned long) ;

__attribute__((used)) static long iSeries_hpte_updatepp(unsigned long slot, unsigned long newpp,
   unsigned long va, int psize, int ssize, int local)
{
 struct hash_pte hpte;
 unsigned long want_v;

 iSeries_hlock(slot);

 HvCallHpt_get(&hpte, slot);
 want_v = hpte_encode_v(va, MMU_PAGE_4K, MMU_SEGSIZE_256M);

 if (HPTE_V_COMPARE(hpte.v, want_v) && (hpte.v & HPTE_V_VALID)) {




  HvCallHpt_setPp(slot, (newpp & 0x3) | ((newpp & 0x4) << 1));
  iSeries_hunlock(slot);
  return 0;
 }
 iSeries_hunlock(slot);

 return -1;
}
