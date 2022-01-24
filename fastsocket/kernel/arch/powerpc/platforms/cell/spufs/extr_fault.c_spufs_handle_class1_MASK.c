#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_8__ {int /*<<< orphan*/  min_flt; int /*<<< orphan*/  maj_flt; int /*<<< orphan*/  hash_flt; } ;
struct TYPE_7__ {int class_1_dar; int class_1_dsisr; } ;
struct spu_context {scalar_t__ state; TYPE_5__* ops; TYPE_4__* spu; TYPE_2__ stats; TYPE_1__ csa; int /*<<< orphan*/  state_mutex; } ;
struct TYPE_12__ {int /*<<< orphan*/  mm; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* restart_dma ) (struct spu_context*) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  min_flt; int /*<<< orphan*/  maj_flt; int /*<<< orphan*/  hash_flt; } ;
struct TYPE_10__ {TYPE_3__ stats; } ;

/* Variables and functions */
 int MFC_DSISR_ACCESS_DENIED ; 
 int MFC_DSISR_ACCESS_PUT ; 
 int MFC_DSISR_PTE_NOT_FOUND ; 
 int /*<<< orphan*/  SPE_EVENT_SPE_DATA_STORAGE ; 
 scalar_t__ SPU_STATE_RUNNABLE ; 
 int /*<<< orphan*/  SPU_UTIL_IOWAIT ; 
 int /*<<< orphan*/  SPU_UTIL_SYSTEM ; 
 unsigned int VM_FAULT_MAJOR ; 
 int _PAGE_PRESENT ; 
 unsigned long _PAGE_RW ; 
 int _PAGE_USER ; 
 TYPE_6__* current ; 
 int FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct spu_context*,int,int,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (struct spu_context*) ; 
 int /*<<< orphan*/  FUNC7 (struct spu_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct spu_context*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct spu_context*) ; 

int FUNC10(struct spu_context *ctx)
{
	u64 ea, dsisr, access;
	unsigned long flags;
	unsigned flt = 0;
	int ret;

	/*
	 * dar and dsisr get passed from the registers
	 * to the spu_context, to this function, but not
	 * back to the spu if it gets scheduled again.
	 *
	 * if we don't handle the fault for a saved context
	 * in time, we can still expect to get the same fault
	 * the immediately after the context restore.
	 */
	ea = ctx->csa.class_1_dar;
	dsisr = ctx->csa.class_1_dsisr;

	if (!(dsisr & (MFC_DSISR_PTE_NOT_FOUND | MFC_DSISR_ACCESS_DENIED)))
		return 0;

	FUNC7(ctx, SPU_UTIL_IOWAIT);

	FUNC4("ctx %p: ea %016llx, dsisr %016llx state %d\n", ctx, ea,
		dsisr, ctx->state);

	ctx->stats.hash_flt++;
	if (ctx->state == SPU_STATE_RUNNABLE)
		ctx->spu->stats.hash_flt++;

	/* we must not hold the lock when entering spu_handle_mm_fault */
	FUNC6(ctx);

	access = (_PAGE_PRESENT | _PAGE_USER);
	access |= (dsisr & MFC_DSISR_ACCESS_PUT) ? _PAGE_RW : 0UL;
	FUNC2(flags);
	ret = FUNC0(ea, access, 0x300);
	FUNC1(flags);

	/* hashing failed, so try the actual fault handler */
	if (ret)
		ret = FUNC5(current->mm, ea, dsisr, &flt);

	/*
	 * This is nasty: we need the state_mutex for all the bookkeeping even
	 * if the syscall was interrupted by a signal. ewww.
	 */
	FUNC3(&ctx->state_mutex);

	/*
	 * Clear dsisr under ctxt lock after handling the fault, so that
	 * time slicing will not preempt the context while the page fault
	 * handler is running. Context switch code removes mappings.
	 */
	ctx->csa.class_1_dar = ctx->csa.class_1_dsisr = 0;

	/*
	 * If we handled the fault successfully and are in runnable
	 * state, restart the DMA.
	 * In case of unhandled error report the problem to user space.
	 */
	if (!ret) {
		if (flt & VM_FAULT_MAJOR)
			ctx->stats.maj_flt++;
		else
			ctx->stats.min_flt++;
		if (ctx->state == SPU_STATE_RUNNABLE) {
			if (flt & VM_FAULT_MAJOR)
				ctx->spu->stats.maj_flt++;
			else
				ctx->spu->stats.min_flt++;
		}

		if (ctx->spu)
			ctx->ops->restart_dma(ctx);
	} else
		FUNC8(ctx, ea, SPE_EVENT_SPE_DATA_STORAGE);

	FUNC7(ctx, SPU_UTIL_SYSTEM);
	return ret;
}