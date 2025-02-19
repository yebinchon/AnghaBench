
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;


 int BUG_ON (int) ;
 unsigned long beat_read_htab_entries (int ,unsigned long,unsigned long*) ;

__attribute__((used)) static unsigned long beat_lpar_hpte_getword0(unsigned long slot)
{
 unsigned long dword0;
 unsigned long lpar_rc;
 u64 dword[5];

 lpar_rc = beat_read_htab_entries(0, slot & ~3UL, dword);

 dword0 = dword[slot&3];

 BUG_ON(lpar_rc != 0);

 return dword0;
}
