
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct iommu_table {scalar_t__ it_base; } ;



__attribute__((used)) static unsigned long tce_get_pseries(struct iommu_table *tbl, long index)
{
 u64 *tcep;

 tcep = ((u64 *)tbl->it_base) + index;

 return *tcep;
}
