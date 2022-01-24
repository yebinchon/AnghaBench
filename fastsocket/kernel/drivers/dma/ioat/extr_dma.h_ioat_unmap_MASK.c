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
struct pci_dev {int dummy; } ;
typedef  enum dma_ctrl_flags { ____Placeholder_dma_ctrl_flags } dma_ctrl_flags ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int DMA_COMPL_DEST_UNMAP_SINGLE ; 
 int DMA_COMPL_SRC_UNMAP_SINGLE ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,size_t,int) ; 

__attribute__((used)) static inline void FUNC2(struct pci_dev *pdev, dma_addr_t addr, size_t len,
			      int direction, enum dma_ctrl_flags flags, bool dst)
{
	if ((dst && (flags & DMA_COMPL_DEST_UNMAP_SINGLE)) ||
	    (!dst && (flags & DMA_COMPL_SRC_UNMAP_SINGLE)))
		FUNC1(pdev, addr, len, direction);
	else
		FUNC0(pdev, addr, len, direction);
}