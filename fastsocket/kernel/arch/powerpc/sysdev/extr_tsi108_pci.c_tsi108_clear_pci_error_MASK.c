#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;

/* Variables and functions */
 scalar_t__ TSI108_PB_AERR ; 
 scalar_t__ TSI108_PB_ERRCS ; 
 int TSI108_PB_ERRCS_ES ; 
 scalar_t__ TSI108_PB_ISR ; 
 int TSI108_PB_ISR_PBS_RD_ERR ; 
 scalar_t__ TSI108_PB_OFFSET ; 
 scalar_t__ TSI108_PCI_CSR ; 
 scalar_t__ TSI108_PCI_OFFSET ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 

void FUNC2(u32 pci_cfg_base)
{
	u32 err_stat, err_addr, pci_stat;

	/*
	 * Quietly clear PB and PCI error flags set as result
	 * of PCI/X configuration read requests.
	 */

	/* Read PB Error Log Registers */

	err_stat = FUNC0(TSI108_PB_OFFSET + TSI108_PB_ERRCS);
	err_addr = FUNC0(TSI108_PB_OFFSET + TSI108_PB_AERR);

	if (err_stat & TSI108_PB_ERRCS_ES) {
		/* Clear error flag */
		FUNC1(TSI108_PB_OFFSET + TSI108_PB_ERRCS,
				 TSI108_PB_ERRCS_ES);

		/* Clear read error reported in PB_ISR */
		FUNC1(TSI108_PB_OFFSET + TSI108_PB_ISR,
				 TSI108_PB_ISR_PBS_RD_ERR);

		/* Clear PCI/X bus cfg errors if applicable */
		if ((err_addr & 0xFF000000) == pci_cfg_base) {
			pci_stat =
			    FUNC0(TSI108_PCI_OFFSET + TSI108_PCI_CSR);
			FUNC1(TSI108_PCI_OFFSET + TSI108_PCI_CSR,
					 pci_stat);
		}
	}

	return;
}