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
struct gru_tlb_fault_handle {int fillasid; unsigned long fillvaddr; unsigned long pfn; int gaa; int dirty; int pagesize; int /*<<< orphan*/  opc; } ;

/* Variables and functions */
 unsigned long GRU_PADDR_SHIFT ; 
 int /*<<< orphan*/  TFHOP_WRITE_ONLY ; 
 int /*<<< orphan*/  FUNC0 (struct gru_tlb_fault_handle*) ; 
 int /*<<< orphan*/  tfhop_write_only ; 
 int FUNC1 (struct gru_tlb_fault_handle*,int /*<<< orphan*/ ) ; 

int FUNC2(struct gru_tlb_fault_handle *tfh,
				  unsigned long paddr, int gaa,
				  unsigned long vaddr, int asid, int dirty,
				  int pagesize)
{
	tfh->fillasid = asid;
	tfh->fillvaddr = vaddr;
	tfh->pfn = paddr >> GRU_PADDR_SHIFT;
	tfh->gaa = gaa;
	tfh->dirty = dirty;
	tfh->pagesize = pagesize;
	tfh->opc = TFHOP_WRITE_ONLY;
	FUNC0(tfh);
	return FUNC1(tfh, tfhop_write_only);
}