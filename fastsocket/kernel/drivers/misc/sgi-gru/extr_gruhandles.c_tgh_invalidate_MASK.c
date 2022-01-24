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
struct gru_tlb_global_handle {unsigned long vaddr; int asid; int pagesize; int n; int global; unsigned long vaddrmask; unsigned short ctxbitmap; int /*<<< orphan*/  opc; } ;

/* Variables and functions */
 int /*<<< orphan*/  TGHOP_TLBINV ; 
 int /*<<< orphan*/  FUNC0 (struct gru_tlb_global_handle*) ; 
 int /*<<< orphan*/  tghop_invalidate ; 
 int FUNC1 (struct gru_tlb_global_handle*,int /*<<< orphan*/ ) ; 

int FUNC2(struct gru_tlb_global_handle *tgh,
				 unsigned long vaddr, unsigned long vaddrmask,
				 int asid, int pagesize, int global, int n,
				 unsigned short ctxbitmap)
{
	tgh->vaddr = vaddr;
	tgh->asid = asid;
	tgh->pagesize = pagesize;
	tgh->n = n;
	tgh->global = global;
	tgh->vaddrmask = vaddrmask;
	tgh->ctxbitmap = ctxbitmap;
	tgh->opc = TGHOP_TLBINV;
	FUNC0(tgh);
	return FUNC1(tgh, tghop_invalidate);
}