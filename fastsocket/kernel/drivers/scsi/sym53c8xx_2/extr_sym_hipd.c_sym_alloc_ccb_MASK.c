#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sym_hcb {scalar_t__ actccbs; int /*<<< orphan*/  dummy_ccbq; int /*<<< orphan*/  free_ccbq; struct sym_ccb** ccbh; } ;
struct TYPE_7__ {void* addr; } ;
struct TYPE_5__ {void* restart; void* start; } ;
struct TYPE_6__ {TYPE_1__ go; } ;
struct TYPE_8__ {TYPE_3__ smsg_ext; TYPE_2__ head; } ;
struct sym_ccb {int /*<<< orphan*/  link2_ccbq; int /*<<< orphan*/  link_ccbq; TYPE_4__ phys; struct sym_ccb* link_ccbh; int /*<<< orphan*/  ccb_ba; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 scalar_t__ SYM_CONF_MAX_START ; 
 int /*<<< orphan*/  bad_i_t_l ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  idle ; 
 int /*<<< orphan*/ * msgin ; 
 struct sym_ccb* FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sym_ccb*,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct sym_ccb*) ; 

__attribute__((used)) static struct sym_ccb *FUNC9(struct sym_hcb *np)
{
	struct sym_ccb *cp = NULL;
	int hcode;

	/*
	 *  Prevent from allocating more CCBs than we can 
	 *  queue to the controller.
	 */
	if (np->actccbs >= SYM_CONF_MAX_START)
		return NULL;

	/*
	 *  Allocate memory for this CCB.
	 */
	cp = FUNC5(sizeof(struct sym_ccb), "CCB");
	if (!cp)
		goto out_free;

	/*
	 *  Count it.
	 */
	np->actccbs++;

	/*
	 *  Compute the bus address of this ccb.
	 */
	cp->ccb_ba = FUNC8(cp);

	/*
	 *  Insert this ccb into the hashed list.
	 */
	hcode = FUNC0(cp->ccb_ba);
	cp->link_ccbh = np->ccbh[hcode];
	np->ccbh[hcode] = cp;

	/*
	 *  Initialyze the start and restart actions.
	 */
	cp->phys.head.go.start   = FUNC4(FUNC2(np, idle));
	cp->phys.head.go.restart = FUNC4(FUNC3(np, bad_i_t_l));

 	/*
	 *  Initilialyze some other fields.
	 */
	cp->phys.smsg_ext.addr = FUNC4(FUNC1(np, msgin[2]));

	/*
	 *  Chain into free ccb queue.
	 */
	FUNC6(&cp->link_ccbq, &np->free_ccbq);

	/*
	 *  Chain into optionnal lists.
	 */
#ifdef SYM_OPT_HANDLE_DEVICE_QUEUEING
	sym_insque_head(&cp->link2_ccbq, &np->dummy_ccbq);
#endif
	return cp;
out_free:
	if (cp)
		FUNC7(cp, sizeof(*cp), "CCB");
	return NULL;
}