
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct iommu_table {scalar_t__ it_base; } ;


 int cpu_to_be64 (int ) ;
 int flush_tce (int *) ;

void tce_free(struct iommu_table *tbl, long index, unsigned int npages)
{
 u64* tp;

 tp = ((u64*)tbl->it_base) + index;

 while (npages--) {
  *tp = cpu_to_be64(0);
  flush_tce(tp);
  tp++;
 }
}
