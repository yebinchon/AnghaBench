
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PAGE_SHIFT ;
 scalar_t__ amd_iommu_last_bdf ;
 unsigned int get_order (int) ;

__attribute__((used)) static inline unsigned long tbl_size(int entry_size)
{
 unsigned shift = PAGE_SHIFT +
    get_order(((int)amd_iommu_last_bdf + 1) * entry_size);

 return 1UL << shift;
}
