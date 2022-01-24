#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * pci_dma_dev_setup; int /*<<< orphan*/ * pci_dma_bus_setup; int /*<<< orphan*/  tce_get; int /*<<< orphan*/  tce_free; int /*<<< orphan*/  tce_build; int /*<<< orphan*/  dma_set_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_FEATURE_LPAR ; 
 int /*<<< orphan*/  FW_FEATURE_MULTITCE ; 
 int /*<<< orphan*/  dma_direct_ops ; 
 int /*<<< orphan*/  dma_iommu_ops ; 
 int /*<<< orphan*/  dma_set_mask_pSeriesLP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iommu_mem_nb ; 
 int /*<<< orphan*/  iommu_reconfig_nb ; 
 scalar_t__ of_chosen ; 
 scalar_t__ FUNC1 (scalar_t__,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * pci_dma_bus_setup_pSeries ; 
 int /*<<< orphan*/ * pci_dma_bus_setup_pSeriesLP ; 
 int /*<<< orphan*/ * pci_dma_dev_setup_pSeries ; 
 int /*<<< orphan*/ * pci_dma_dev_setup_pSeriesLP ; 
 TYPE_1__ ppc_md ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tce_build_pSeries ; 
 int /*<<< orphan*/  tce_build_pSeriesLP ; 
 int /*<<< orphan*/  tce_buildmulti_pSeriesLP ; 
 int /*<<< orphan*/  tce_free_pSeries ; 
 int /*<<< orphan*/  tce_free_pSeriesLP ; 
 int /*<<< orphan*/  tce_freemulti_pSeriesLP ; 
 int /*<<< orphan*/  tce_get_pSeriesLP ; 
 int /*<<< orphan*/  tce_get_pseries ; 

void FUNC5(void)
{
	if (of_chosen && FUNC1(of_chosen, "linux,iommu-off", NULL)) {
		/* Direct I/O, IOMMU off */
		ppc_md.pci_dma_dev_setup = NULL;
		ppc_md.pci_dma_bus_setup = NULL;
		FUNC4(&dma_direct_ops);
		return;
	}

	if (FUNC0(FW_FEATURE_LPAR)) {
		if (FUNC0(FW_FEATURE_MULTITCE)) {
			ppc_md.tce_build = tce_buildmulti_pSeriesLP;
			ppc_md.tce_free	 = tce_freemulti_pSeriesLP;
		} else {
			ppc_md.tce_build = tce_build_pSeriesLP;
			ppc_md.tce_free	 = tce_free_pSeriesLP;
		}
		ppc_md.tce_get   = tce_get_pSeriesLP;
		ppc_md.pci_dma_bus_setup = pci_dma_bus_setup_pSeriesLP;
		ppc_md.pci_dma_dev_setup = pci_dma_dev_setup_pSeriesLP;
		ppc_md.dma_set_mask = dma_set_mask_pSeriesLP;
	} else {
		ppc_md.tce_build = tce_build_pSeries;
		ppc_md.tce_free  = tce_free_pSeries;
		ppc_md.tce_get   = tce_get_pseries;
		ppc_md.pci_dma_bus_setup = pci_dma_bus_setup_pSeries;
		ppc_md.pci_dma_dev_setup = pci_dma_dev_setup_pSeries;
	}


	FUNC2(&iommu_reconfig_nb);
	FUNC3(&iommu_mem_nb);

	FUNC4(&dma_iommu_ops);
}