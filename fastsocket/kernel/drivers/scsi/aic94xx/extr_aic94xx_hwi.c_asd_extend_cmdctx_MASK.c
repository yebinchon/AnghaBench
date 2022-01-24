#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int max_scbs; TYPE_2__* scb_ext; } ;
struct asd_ha_struct {TYPE_1__ hw_prof; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_4__ {scalar_t__ dma_handle; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,int) ; 
 int ASD_SCB_SIZE ; 
 int /*<<< orphan*/  CMDCTXBASE ; 
 int /*<<< orphan*/  CTXDOMAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_2__* FUNC1 (struct asd_ha_struct*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (struct asd_ha_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct asd_ha_struct*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct asd_ha_struct*,int /*<<< orphan*/ ,int) ; 
 int max_cmnds ; 

__attribute__((used)) static int FUNC6(struct asd_ha_struct *asd_ha)
{
	dma_addr_t dma_handle;
	unsigned long dma_addr;
	u32 d;
	int size;

	asd_ha->hw_prof.scb_ext = NULL;
	if (max_cmnds <= asd_ha->hw_prof.max_scbs || max_cmnds > 0xFFFF) {
		max_cmnds = asd_ha->hw_prof.max_scbs;
		return 0;
	}

	size = (max_cmnds - asd_ha->hw_prof.max_scbs + 1) * ASD_SCB_SIZE;

	asd_ha->hw_prof.scb_ext = FUNC1(asd_ha, size, GFP_KERNEL);
	if (!asd_ha->hw_prof.scb_ext) {
		FUNC2("couldn't allocate memory for %d commands\n",
			   max_cmnds);
		max_cmnds = asd_ha->hw_prof.max_scbs;
		return -ENOMEM;
	}
	dma_handle = asd_ha->hw_prof.scb_ext->dma_handle;
	dma_addr = FUNC0((unsigned long) dma_handle, ASD_SCB_SIZE);
	dma_addr -= asd_ha->hw_prof.max_scbs * ASD_SCB_SIZE;
	dma_handle = (dma_addr_t) dma_addr;
	FUNC4(asd_ha, CMDCTXBASE, dma_handle);
	d = FUNC3(asd_ha, CTXDOMAIN);
	d &= ~1;
	FUNC5(asd_ha, CTXDOMAIN, d);

	asd_ha->hw_prof.max_scbs = max_cmnds;

	return 0;
}