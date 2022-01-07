
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 unsigned int PG_LEVEL_4K ;
 int * lookup_address (unsigned long,unsigned int*) ;
 int pte_hidden (int ) ;

pte_t *kmemcheck_pte_lookup(unsigned long address)
{
 pte_t *pte;
 unsigned int level;

 pte = lookup_address(address, &level);
 if (!pte)
  return ((void*)0);
 if (level != PG_LEVEL_4K)
  return ((void*)0);
 if (!pte_hidden(*pte))
  return ((void*)0);

 return pte;
}
