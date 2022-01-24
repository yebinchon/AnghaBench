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
struct bnx2x_func_sp_obj {unsigned long pending; int /*<<< orphan*/  next_state; int /*<<< orphan*/  state; } ;
struct bnx2x {int dummy; } ;
typedef  enum bnx2x_func_cmd { ____Placeholder_bnx2x_func_cmd } bnx2x_func_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BNX2X_F_STATE_MAX ; 
 int /*<<< orphan*/  BNX2X_MSG_SP ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static inline int FUNC7(struct bnx2x *bp,
					       struct bnx2x_func_sp_obj *o,
					       enum bnx2x_func_cmd cmd)
{
	unsigned long cur_pending = o->pending;

	if (!FUNC5(cmd, &cur_pending)) {
		FUNC0("Bad MC reply %d for func %d in state %d pending 0x%lx, next_state %d\n",
			  cmd, FUNC1(bp), o->state,
			  cur_pending, o->next_state);
		return -EINVAL;
	}

	FUNC2(BNX2X_MSG_SP,
	   "Completing command %d for func %d, setting state to %d\n",
	   cmd, FUNC1(bp), o->next_state);

	o->state = o->next_state;
	o->next_state = BNX2X_F_STATE_MAX;

	/* It's important that o->state and o->next_state are
	 * updated before o->pending.
	 */
	FUNC6();

	FUNC3(cmd, &o->pending);
	FUNC4();

	return 0;
}