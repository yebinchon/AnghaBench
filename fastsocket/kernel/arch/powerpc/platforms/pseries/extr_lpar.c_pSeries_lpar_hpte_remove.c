
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int HPTES_PER_GROUP ;
 int H_ANDCOND ;
 unsigned long H_NOT_FOUND ;
 unsigned long H_RESOURCE ;
 unsigned long H_SUCCESS ;
 int mftb () ;
 unsigned long plpar_pte_remove (int ,unsigned long,int,unsigned long*,unsigned long*) ;

__attribute__((used)) static long pSeries_lpar_hpte_remove(unsigned long hpte_group)
{
 unsigned long slot_offset;
 unsigned long lpar_rc;
 int i;
 unsigned long dummy1, dummy2;


 slot_offset = mftb() & 0x7;

 for (i = 0; i < HPTES_PER_GROUP; i++) {


  lpar_rc = plpar_pte_remove(H_ANDCOND, hpte_group + slot_offset,
        (0x1UL << 4), &dummy1, &dummy2);
  if (lpar_rc == H_SUCCESS)
   return i;






  BUG_ON(lpar_rc != H_NOT_FOUND && lpar_rc != H_RESOURCE);

  slot_offset++;
  slot_offset &= 0x7;
 }

 return -1;
}
