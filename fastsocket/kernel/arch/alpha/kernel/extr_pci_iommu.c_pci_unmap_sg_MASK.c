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
struct scatterlist {int dma_address; size_t dma_length; } ;
struct pci_iommu_arena {int dma_base; int size; int next_entry; int /*<<< orphan*/  lock; } ;
struct pci_dev {int dma_mask; struct pci_controller* sysdata; } ;
struct pci_controller {struct pci_iommu_arena* sg_isa; struct pci_iommu_arena* sg_pci; } ;
typedef  int dma_addr_t ;
typedef  int dma64_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* mv_pci_tbi ) (struct pci_controller*,int,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int ISA_DMA_MASK ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int PCI_DMA_NONE ; 
 int __direct_map_base ; 
 int __direct_map_size ; 
 TYPE_1__ alpha_mv ; 
 int /*<<< orphan*/  FUNC2 (struct pci_iommu_arena*,long,long) ; 
 long FUNC3 (int,size_t,int /*<<< orphan*/ ) ; 
 struct pci_controller* pci_isa_hose ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_controller*,int,int) ; 

void
FUNC7(struct pci_dev *pdev, struct scatterlist *sg, int nents,
	     int direction)
{
	unsigned long flags;
	struct pci_controller *hose;
	struct pci_iommu_arena *arena;
	struct scatterlist *end;
	dma_addr_t max_dma;
	dma_addr_t fbeg, fend;

	if (direction == PCI_DMA_NONE)
		FUNC0();

	if (! alpha_mv.mv_pci_tbi)
		return;

	hose = pdev ? pdev->sysdata : pci_isa_hose;
	max_dma = pdev ? pdev->dma_mask : ISA_DMA_MASK;
	arena = hose->sg_pci;
	if (!arena || arena->dma_base + arena->size - 1 > max_dma)
		arena = hose->sg_isa;

	fbeg = -1, fend = 0;

	FUNC4(&arena->lock, flags);

	for (end = sg + nents; sg < end; ++sg) {
		dma64_addr_t addr;
		size_t size;
		long npages, ofs;
		dma_addr_t tend;

		addr = sg->dma_address;
		size = sg->dma_length;
		if (!size)
			break;

		if (addr > 0xffffffff) {
			/* It's a DAC address -- nothing to do.  */
			FUNC1("    (%ld) DAC [%llx,%zx]\n",
			      sg - end + nents, addr, size);
			continue;
		}

		if (addr >= __direct_map_base
		    && addr < __direct_map_base + __direct_map_size) {
			/* Nothing to do.  */
			FUNC1("    (%ld) direct [%llx,%zx]\n",
			      sg - end + nents, addr, size);
			continue;
		}

		FUNC1("    (%ld) sg [%llx,%zx]\n",
		     sg - end + nents, addr, size);

		npages = FUNC3(addr, size, PAGE_SIZE);
		ofs = (addr - arena->dma_base) >> PAGE_SHIFT;
		FUNC2(arena, ofs, npages);

		tend = addr + size - 1;
		if (fbeg > addr) fbeg = addr;
		if (fend < tend) fend = tend;
	}

        /* If we're freeing ptes above the `next_entry' pointer (they
           may have snuck back into the TLB since the last wrap flush),
           we need to flush the TLB before reallocating the latter.  */
	if ((fend - arena->dma_base) >> PAGE_SHIFT >= arena->next_entry)
		alpha_mv.mv_pci_tbi(hose, fbeg, fend);

	FUNC5(&arena->lock, flags);

	FUNC1("pci_unmap_sg: %ld entries\n", nents - (end - sg));
}