
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_pte {unsigned long v; } ;


 int HvCallHpt_get (struct hash_pte*,unsigned long) ;

__attribute__((used)) static unsigned long iSeries_hpte_getword0(unsigned long slot)
{
 struct hash_pte hpte;

 HvCallHpt_get(&hpte, slot);
 return hpte.v;
}
