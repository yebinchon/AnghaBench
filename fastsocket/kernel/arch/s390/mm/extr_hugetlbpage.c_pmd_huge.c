
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmd_t ;


 int MACHINE_HAS_HPAGE ;
 int _SEGMENT_ENTRY_LARGE ;
 int pmd_val (int ) ;

int pmd_huge(pmd_t pmd)
{
 if (!MACHINE_HAS_HPAGE)
  return 0;

 return !!(pmd_val(pmd) & _SEGMENT_ENTRY_LARGE);
}
