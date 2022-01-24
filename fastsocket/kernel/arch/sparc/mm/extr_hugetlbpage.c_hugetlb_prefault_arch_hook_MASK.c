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
struct tsb_config {int /*<<< orphan*/ * tsb; } ;
struct TYPE_2__ {unsigned long sparc64_ctx_val; struct tsb_config* tsb_block; } ;
struct mm_struct {TYPE_1__ context; } ;

/* Variables and functions */
 unsigned long CTX_PGSZ0_SHIFT ; 
 unsigned long CTX_PGSZ1_SHIFT ; 
 unsigned long CTX_PGSZ_BASE ; 
 unsigned long CTX_PGSZ_HUGE ; 
 unsigned long CTX_PGSZ_MASK ; 
 size_t MM_TSB_HUGE ; 
 scalar_t__ cheetah_plus ; 
 int /*<<< orphan*/  context_reload ; 
 int /*<<< orphan*/  ctx_alloc_lock ; 
 int /*<<< orphan*/  FUNC0 (struct mm_struct*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mm_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ tlb_type ; 
 int /*<<< orphan*/  FUNC6 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct mm_struct*,size_t,int /*<<< orphan*/ ) ; 

void FUNC8(struct mm_struct *mm)
{
	struct tsb_config *tp = &mm->context.tsb_block[MM_TSB_HUGE];

	if (FUNC1(tp->tsb != NULL))
		return;

	FUNC7(mm, MM_TSB_HUGE, 0);
	FUNC6(mm);
	FUNC3(mm);

	/* On UltraSPARC-III+ and later, configure the second half of
	 * the Data-TLB for huge pages.
	 */
	if (tlb_type == cheetah_plus) {
		unsigned long ctx;

		FUNC4(&ctx_alloc_lock);
		ctx = mm->context.sparc64_ctx_val;
		ctx &= ~CTX_PGSZ_MASK;
		ctx |= CTX_PGSZ_BASE << CTX_PGSZ0_SHIFT;
		ctx |= CTX_PGSZ_HUGE << CTX_PGSZ1_SHIFT;

		if (ctx != mm->context.sparc64_ctx_val) {
			/* When changing the page size fields, we
			 * must perform a context flush so that no
			 * stale entries match.  This flush must
			 * occur with the original context register
			 * settings.
			 */
			FUNC0(mm);

			/* Reload the context register of all processors
			 * also executing in this address space.
			 */
			mm->context.sparc64_ctx_val = ctx;
			FUNC2(context_reload, mm, 0);
		}
		FUNC5(&ctx_alloc_lock);
	}
}