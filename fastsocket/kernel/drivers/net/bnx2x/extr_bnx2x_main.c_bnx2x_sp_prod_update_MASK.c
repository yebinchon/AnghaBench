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
struct bnx2x {int /*<<< orphan*/  spq_prod_idx; } ;

/* Variables and functions */
 scalar_t__ BAR_XSTRORM_INTMEM ; 
 int FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct bnx2x *bp)
{
	int func = FUNC0(bp);

	/*
	 * Make sure that BD data is updated before writing the producer:
	 * BD data is written to the memory, the producer is read from the
	 * memory, thus we need a full memory barrier to ensure the ordering.
	 */
	FUNC3();

	FUNC1(bp, BAR_XSTRORM_INTMEM + FUNC2(func),
		 bp->spq_prod_idx);
	FUNC4();
}