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
typedef  size_t u64 ;
struct tioca_kernel {int ca_ap_pagesize; int ca_pcigart_entries; int /*<<< orphan*/  ca_lock; void** ca_pcigart; int /*<<< orphan*/  ca_dmamaps; scalar_t__ ca_pciap_base; void* ca_pcigart_pagemap; } ;
struct tioca_dmamap {int cad_gart_size; int cad_gart_entry; int /*<<< orphan*/  cad_list; scalar_t__ cad_dma_addr; } ;
struct tioca_common {scalar_t__ ca_kernel_private; } ;
struct pcidev_info {scalar_t__ pdi_pcibus_info; } ;
struct pci_dev {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 size_t FUNC0 (unsigned long) ; 
 struct pcidev_info* FUNC1 (struct pci_dev*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (void*,int) ; 
 int FUNC4 (void*,int,int) ; 
 int FUNC5 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tioca_dmamap*) ; 
 struct tioca_dmamap* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 void* FUNC12 (size_t) ; 
 int /*<<< orphan*/  FUNC13 (struct tioca_kernel*) ; 

__attribute__((used)) static dma_addr_t
FUNC14(struct pci_dev *pdev, unsigned long paddr, size_t req_size)
{
	int i, ps, ps_shift, entry, entries, mapsize, last_entry;
	u64 xio_addr, end_xio_addr;
	struct tioca_common *tioca_common;
	struct tioca_kernel *tioca_kern;
	dma_addr_t bus_addr = 0;
	struct tioca_dmamap *ca_dmamap;
	void *map;
	unsigned long flags;
	struct pcidev_info *pcidev_info = FUNC1(pdev);

	tioca_common = (struct tioca_common *)pcidev_info->pdi_pcibus_info;
	tioca_kern = (struct tioca_kernel *)tioca_common->ca_kernel_private;

	xio_addr = FUNC0(paddr);
	if (!xio_addr)
		return 0;

	FUNC10(&tioca_kern->ca_lock, flags);

	/*
	 * allocate a map struct
	 */

	ca_dmamap = FUNC7(sizeof(struct tioca_dmamap), GFP_ATOMIC);
	if (!ca_dmamap)
		goto map_return;

	/*
	 * Locate free entries that can hold req_size.  Account for
	 * unaligned start/length when allocating.
	 */

	ps = tioca_kern->ca_ap_pagesize;	/* will be power of 2 */
	ps_shift = FUNC2(ps) - 1;
	end_xio_addr = xio_addr + req_size - 1;

	entries = (end_xio_addr >> ps_shift) - (xio_addr >> ps_shift) + 1;

	map = tioca_kern->ca_pcigart_pagemap;
	mapsize = tioca_kern->ca_pcigart_entries;

	entry = FUNC3(map, mapsize);
	while (entry < mapsize) {
		last_entry = FUNC4(map, mapsize, entry);

		if (last_entry - entry >= entries)
			break;

		entry = FUNC5(map, mapsize, last_entry);
	}

	if (entry > mapsize) {
		FUNC6(ca_dmamap);
		goto map_return;
	}

	for (i = 0; i < entries; i++)
		FUNC9(entry + i, map);

	bus_addr = tioca_kern->ca_pciap_base + (entry * ps);

	ca_dmamap->cad_dma_addr = bus_addr;
	ca_dmamap->cad_gart_size = entries;
	ca_dmamap->cad_gart_entry = entry;
	FUNC8(&ca_dmamap->cad_list, &tioca_kern->ca_dmamaps);

	if (xio_addr % ps) {
		tioca_kern->ca_pcigart[entry] = FUNC12(xio_addr);
		bus_addr += xio_addr & (ps - 1);
		xio_addr &= ~(ps - 1);
		xio_addr += ps;
		entry++;
	}

	while (xio_addr < end_xio_addr) {
		tioca_kern->ca_pcigart[entry] = FUNC12(xio_addr);
		xio_addr += ps;
		entry++;
	}

	FUNC13(tioca_kern);

map_return:
	FUNC11(&tioca_kern->ca_lock, flags);
	return bus_addr;
}