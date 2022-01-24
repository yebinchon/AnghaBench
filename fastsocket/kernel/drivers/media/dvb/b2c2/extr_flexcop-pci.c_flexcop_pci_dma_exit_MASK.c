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
struct flexcop_pci {int init_state; int /*<<< orphan*/ * dma; } ;

/* Variables and functions */
 int FC_PCI_DMA_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct flexcop_pci *fc_pci)
{
	if (fc_pci->init_state & FC_PCI_DMA_INIT) {
		FUNC0(&fc_pci->dma[0]);
		FUNC0(&fc_pci->dma[1]);
	}
	fc_pci->init_state &= ~FC_PCI_DMA_INIT;
}