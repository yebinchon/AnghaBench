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
typedef  scalar_t__ uint32_t ;
struct nandsim {int options; size_t npstates; int state; int* pstates; int* op; int stateidx; int nxstate; } ;
struct TYPE_2__ {int reqopts; int* states; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int NS_OPER_NUM ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct nandsim*) ; 
 int STATE_ADDR_MASK ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__* ops ; 
 int /*<<< orphan*/  FUNC4 (struct nandsim*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct nandsim *ns, uint32_t flag)
{
	int opsfound = 0;
	int i, j, idx = 0;

	for (i = 0; i < NS_OPER_NUM; i++) {

		int found = 1;

		if (!(ns->options & ops[i].reqopts))
			/* Ignore operations we can't perform */
			continue;

		if (flag) {
			if (!(ops[i].states[ns->npstates] & STATE_ADDR_MASK))
				continue;
		} else {
			if (FUNC1(ns->state) != FUNC1(ops[i].states[ns->npstates]))
				continue;
		}

		for (j = 0; j < ns->npstates; j++)
			if (FUNC1(ops[i].states[j]) != FUNC1(ns->pstates[j])
				&& (ns->options & ops[idx].reqopts)) {
				found = 0;
				break;
			}

		if (found) {
			idx = i;
			opsfound += 1;
		}
	}

	if (opsfound == 1) {
		/* Exact match */
		ns->op = &ops[idx].states[0];
		if (flag) {
			/*
			 * In this case the find_operation function was
			 * called when address has just began input. But it isn't
			 * yet fully input and the current state must
			 * not be one of STATE_ADDR_*, but the STATE_ADDR_*
			 * state must be the next state (ns->nxstate).
			 */
			ns->stateidx = ns->npstates - 1;
		} else {
			ns->stateidx = ns->npstates;
		}
		ns->npstates = 0;
		ns->state = ns->op[ns->stateidx];
		ns->nxstate = ns->op[ns->stateidx + 1];
		FUNC0("find_operation: operation found, index: %d, state: %s, nxstate %s\n",
				idx, FUNC3(ns->state), FUNC3(ns->nxstate));
		return 0;
	}

	if (opsfound == 0) {
		/* Nothing was found. Try to ignore previous commands (if any) and search again */
		if (ns->npstates != 0) {
			FUNC0("find_operation: no operation found, try again with state %s\n",
					FUNC3(ns->state));
			ns->npstates = 0;
			return FUNC5(ns, 0);

		}
		FUNC0("find_operation: no operations found\n");
		FUNC4(ns, FUNC2(ns));
		return -2;
	}

	if (flag) {
		/* This shouldn't happen */
		FUNC0("find_operation: BUG, operation must be known if address is input\n");
		return -2;
	}

	FUNC0("find_operation: there is still ambiguity\n");

	ns->pstates[ns->npstates++] = ns->state;

	return -1;
}