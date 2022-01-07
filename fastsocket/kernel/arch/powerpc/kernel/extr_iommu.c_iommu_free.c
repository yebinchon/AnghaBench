
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_table {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int (* tce_flush ) (struct iommu_table*) ;} ;


 int __iommu_free (struct iommu_table*,int ,unsigned int) ;
 TYPE_1__ ppc_md ;
 int stub1 (struct iommu_table*) ;

__attribute__((used)) static void iommu_free(struct iommu_table *tbl, dma_addr_t dma_addr,
  unsigned int npages)
{
 __iommu_free(tbl, dma_addr, npages);





 if (ppc_md.tce_flush)
  ppc_md.tce_flush(tbl);
}
