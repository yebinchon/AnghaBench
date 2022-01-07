
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_pte {int v; } ;


 int HPTE_V_VALID ;
 long HvCallHpt_findValid (struct hash_pte*,unsigned long) ;

__attribute__((used)) static long iSeries_hpte_find(unsigned long vpn)
{
 struct hash_pte hpte;
 long slot;







 slot = HvCallHpt_findValid(&hpte, vpn);
 if (hpte.v & HPTE_V_VALID) {
  if (slot < 0) {
   slot &= 0x7fffffffffffffff;
   slot = -slot;
  }
 } else
  slot = -1;
 return slot;
}
