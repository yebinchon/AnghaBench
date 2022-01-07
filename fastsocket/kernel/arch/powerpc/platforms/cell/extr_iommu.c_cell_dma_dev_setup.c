
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int BUG () ;
 int cell_dma_dev_setup_fixed (struct device*) ;
 int cell_dma_direct_offset ;
 int cell_get_iommu_table (struct device*) ;
 int dma_direct_ops ;
 int dma_iommu_fixed_ops ;
 int dma_iommu_ops ;
 int * get_dma_ops (struct device*) ;
 int * get_pci_dma_ops () ;
 int set_dma_offset (struct device*,int ) ;
 int set_iommu_table_base (struct device*,int ) ;

__attribute__((used)) static void cell_dma_dev_setup(struct device *dev)
{

 if (get_dma_ops(dev) == &dma_iommu_fixed_ops)
  cell_dma_dev_setup_fixed(dev);
 else if (get_pci_dma_ops() == &dma_iommu_ops)
  set_iommu_table_base(dev, cell_get_iommu_table(dev));
 else if (get_pci_dma_ops() == &dma_direct_ops)
  set_dma_offset(dev, cell_dma_direct_offset);
 else
  BUG();
}
