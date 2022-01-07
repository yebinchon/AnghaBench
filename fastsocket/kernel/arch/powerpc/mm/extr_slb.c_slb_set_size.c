
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 scalar_t__ mmu_slb_size ;
 int patch_slb_encoding (unsigned int*,scalar_t__) ;

void slb_set_size(u16 size)
{
 extern unsigned int *slb_compare_rr_to_size;

 if (mmu_slb_size == size)
  return;

 mmu_slb_size = size;
 patch_slb_encoding(slb_compare_rr_to_size, mmu_slb_size);
}
