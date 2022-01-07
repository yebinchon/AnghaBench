
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MMU_PAGE_16G ;
 int MMU_PAGE_16M ;
 int MMU_PAGE_64K ;




__attribute__((used)) static inline int shift_to_mmu_psize(unsigned int shift)
{
 switch (shift) {

 case 128:
     return MMU_PAGE_64K;

 case 129:
     return MMU_PAGE_16M;
 case 130:
     return MMU_PAGE_16G;
 }
 return -1;
}
