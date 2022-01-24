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
struct stripe_head_state {int dummy; } ;
struct stripe_head {int /*<<< orphan*/  state; int /*<<< orphan*/  reconstruct_state; int /*<<< orphan*/  check_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  STRIPE_COMPUTE_RUN ; 
 int /*<<< orphan*/  STRIPE_HANDLE ; 
 scalar_t__ FUNC0 (struct stripe_head*,struct stripe_head_state*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct stripe_head *sh,
			       struct stripe_head_state *s,
			       int disks)
{
	int i;

	/* look for blocks to read/compute, skip this if a compute
	 * is already in flight, or if the stripe contents are in the
	 * midst of changing due to a write
	 */
	if (!FUNC2(STRIPE_COMPUTE_RUN, &sh->state) && !sh->check_state &&
	    !sh->reconstruct_state)
		for (i = disks; i--; )
			if (FUNC0(sh, s, i, disks))
				break;
	FUNC1(STRIPE_HANDLE, &sh->state);
}