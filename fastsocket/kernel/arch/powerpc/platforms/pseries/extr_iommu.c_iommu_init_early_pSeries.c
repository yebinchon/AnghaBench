
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pci_dma_dev_setup; int * pci_dma_bus_setup; int tce_get; int tce_free; int tce_build; int dma_set_mask; } ;


 int FW_FEATURE_LPAR ;
 int FW_FEATURE_MULTITCE ;
 int dma_direct_ops ;
 int dma_iommu_ops ;
 int dma_set_mask_pSeriesLP ;
 scalar_t__ firmware_has_feature (int ) ;
 int iommu_mem_nb ;
 int iommu_reconfig_nb ;
 scalar_t__ of_chosen ;
 scalar_t__ of_get_property (scalar_t__,char*,int *) ;
 int pSeries_reconfig_notifier_register (int *) ;
 int * pci_dma_bus_setup_pSeries ;
 int * pci_dma_bus_setup_pSeriesLP ;
 int * pci_dma_dev_setup_pSeries ;
 int * pci_dma_dev_setup_pSeriesLP ;
 TYPE_1__ ppc_md ;
 int register_memory_notifier (int *) ;
 int set_pci_dma_ops (int *) ;
 int tce_build_pSeries ;
 int tce_build_pSeriesLP ;
 int tce_buildmulti_pSeriesLP ;
 int tce_free_pSeries ;
 int tce_free_pSeriesLP ;
 int tce_freemulti_pSeriesLP ;
 int tce_get_pSeriesLP ;
 int tce_get_pseries ;

void iommu_init_early_pSeries(void)
{
 if (of_chosen && of_get_property(of_chosen, "linux,iommu-off", ((void*)0))) {

  ppc_md.pci_dma_dev_setup = ((void*)0);
  ppc_md.pci_dma_bus_setup = ((void*)0);
  set_pci_dma_ops(&dma_direct_ops);
  return;
 }

 if (firmware_has_feature(FW_FEATURE_LPAR)) {
  if (firmware_has_feature(FW_FEATURE_MULTITCE)) {
   ppc_md.tce_build = tce_buildmulti_pSeriesLP;
   ppc_md.tce_free = tce_freemulti_pSeriesLP;
  } else {
   ppc_md.tce_build = tce_build_pSeriesLP;
   ppc_md.tce_free = tce_free_pSeriesLP;
  }
  ppc_md.tce_get = tce_get_pSeriesLP;
  ppc_md.pci_dma_bus_setup = pci_dma_bus_setup_pSeriesLP;
  ppc_md.pci_dma_dev_setup = pci_dma_dev_setup_pSeriesLP;
  ppc_md.dma_set_mask = dma_set_mask_pSeriesLP;
 } else {
  ppc_md.tce_build = tce_build_pSeries;
  ppc_md.tce_free = tce_free_pSeries;
  ppc_md.tce_get = tce_get_pseries;
  ppc_md.pci_dma_bus_setup = pci_dma_bus_setup_pSeries;
  ppc_md.pci_dma_dev_setup = pci_dma_dev_setup_pSeries;
 }


 pSeries_reconfig_notifier_register(&iommu_reconfig_nb);
 register_memory_notifier(&iommu_mem_nb);

 set_pci_dma_ops(&dma_iommu_ops);
}
