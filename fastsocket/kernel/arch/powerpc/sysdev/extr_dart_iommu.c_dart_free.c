
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_table {scalar_t__ it_base; } ;


 int DBG (char*,long,long) ;
 int dart_emptyval ;

__attribute__((used)) static void dart_free(struct iommu_table *tbl, long index, long npages)
{
 unsigned int *dp;






 DBG("dart: free at: %lx, %lx\n", index, npages);

 dp = ((unsigned int *)tbl->it_base) + index;

 while (npages--)
  *(dp++) = dart_emptyval;
}
