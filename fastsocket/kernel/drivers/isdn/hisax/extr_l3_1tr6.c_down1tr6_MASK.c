#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  setup; } ;
struct l3_process {int callref; int state; TYPE_1__ para; struct Channel* chan; } ;
struct TYPE_6__ {int debug; } ;
struct PStack {TYPE_2__ l3; } ;
struct Channel {int /*<<< orphan*/  setup; struct l3_process* proc; } ;
typedef  int /*<<< orphan*/  setup_parm ;
struct TYPE_7__ {int primitive; int state; int /*<<< orphan*/  (* rout ) (struct l3_process*,int,void*) ;} ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int CC_SETUP ; 
 int DL_ESTABLISH ; 
 int L3_DEB_STATE ; 
 int REQUEST ; 
 TYPE_3__* downstl ; 
 int /*<<< orphan*/  FUNC1 (struct PStack*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct PStack*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct l3_process* FUNC4 (struct PStack*,int) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct l3_process*,int,void*) ; 

__attribute__((used)) static void
FUNC8(struct PStack *st, int pr, void *arg)
{
	int i, cr;
	struct l3_process *proc;
	struct Channel *chan;
	char tmp[80];

	if ((DL_ESTABLISH | REQUEST)== pr) {
		FUNC2(st, pr, NULL);
		return;
	} else if ((CC_SETUP | REQUEST) == pr) {
		chan = arg;
		cr = FUNC5();
		cr |= 0x80;
		if (!(proc = FUNC4(st, cr))) {
			return;
		} else {
			proc->chan = chan;
			chan->proc = proc;
			FUNC3(&proc->para.setup, &chan->setup, sizeof(setup_parm));
			proc->callref = cr;
		}
	} else {
		proc = arg;
	}

	for (i = 0; i < FUNC0(downstl); i++)
		if ((pr == downstl[i].primitive) &&
		    ((1 << proc->state) & downstl[i].state))
			break;
	if (i == FUNC0(downstl)) {
		if (st->l3.debug & L3_DEB_STATE) {
			FUNC6(tmp, "down1tr6 state %d prim %d unhandled",
				proc->state, pr);
			FUNC1(st, tmp);
		}
	} else {
		if (st->l3.debug & L3_DEB_STATE) {
			FUNC6(tmp, "down1tr6 state %d prim %d",
				proc->state, pr);
			FUNC1(st, tmp);
		}
		downstl[i].rout(proc, pr, arg);
	}
}