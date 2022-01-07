
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 unsigned long H_SUCCESS ;
 unsigned long plpar_pte_read (unsigned long,unsigned long,unsigned long*,unsigned long*) ;

__attribute__((used)) static unsigned long pSeries_lpar_hpte_getword0(unsigned long slot)
{
 unsigned long dword0;
 unsigned long lpar_rc;
 unsigned long dummy_word1;
 unsigned long flags;




 flags = 0;

 lpar_rc = plpar_pte_read(flags, slot, &dword0, &dummy_word1);

 BUG_ON(lpar_rc != H_SUCCESS);

 return dword0;
}
