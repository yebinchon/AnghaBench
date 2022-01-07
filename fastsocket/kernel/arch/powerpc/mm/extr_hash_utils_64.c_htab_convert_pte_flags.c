
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HPTE_R_C ;
 unsigned long HPTE_R_N ;
 unsigned long _PAGE_DIRTY ;
 unsigned long _PAGE_EXEC ;
 unsigned long _PAGE_RW ;
 unsigned long _PAGE_USER ;

__attribute__((used)) static unsigned long htab_convert_pte_flags(unsigned long pteflags)
{
 unsigned long rflags = pteflags & 0x1fa;


 if ((pteflags & _PAGE_EXEC) == 0)
  rflags |= HPTE_R_N;




 if ((pteflags & _PAGE_USER) && !((pteflags & _PAGE_RW) &&
      (pteflags & _PAGE_DIRTY)))
  rflags |= 1;


 return rflags | HPTE_R_C;
}
