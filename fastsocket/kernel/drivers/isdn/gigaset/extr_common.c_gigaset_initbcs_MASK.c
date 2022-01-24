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
struct cardstate {TYPE_1__* ops; scalar_t__ ignoreframes; } ;
struct bc_state {int channel; int use_count; int /*<<< orphan*/ * skb; int /*<<< orphan*/ ** commands; scalar_t__ ignore; scalar_t__ busy; scalar_t__ chstate; struct cardstate* cs; int /*<<< orphan*/  inputstate; int /*<<< orphan*/  fcs; scalar_t__ emptycount; int /*<<< orphan*/  at_state; scalar_t__ trans_up; scalar_t__ trans_down; scalar_t__ corrupted; int /*<<< orphan*/  squeue; int /*<<< orphan*/ * tx_skb; } ;
struct TYPE_2__ {scalar_t__ (* initbcshw ) (struct bc_state*) ;} ;

/* Variables and functions */
 int AT_NUM ; 
 int /*<<< orphan*/  DEBUG_INIT ; 
 scalar_t__ HW_HDR_LEN ; 
 int /*<<< orphan*/  INS_skip_frame ; 
 int /*<<< orphan*/  PPP_INITFCS ; 
 scalar_t__ SBUFSIZE ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bc_state*,struct cardstate*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC7 (struct bc_state*) ; 

__attribute__((used)) static struct bc_state *FUNC8(struct bc_state *bcs,
					struct cardstate *cs, int channel)
{
	int i;

	bcs->tx_skb = NULL; //FIXME -> hw part

	FUNC5(&bcs->squeue);

	bcs->corrupted = 0;
	bcs->trans_down = 0;
	bcs->trans_up = 0;

	FUNC2(DEBUG_INIT, "setting up bcs[%d]->at_state", channel);
	FUNC3(&bcs->at_state, bcs, cs, -1);

#ifdef CONFIG_GIGASET_DEBUG
	bcs->emptycount = 0;
#endif

	FUNC2(DEBUG_INIT, "allocating bcs[%d]->skb", channel);
	bcs->fcs = PPP_INITFCS;
	bcs->inputstate = 0;
	if (cs->ignoreframes) {
		bcs->inputstate |= INS_skip_frame;
		bcs->skb = NULL;
	} else if ((bcs->skb = FUNC0(SBUFSIZE + HW_HDR_LEN)) != NULL)
		FUNC6(bcs->skb, HW_HDR_LEN);
	else {
		FUNC4("out of memory\n");
		bcs->inputstate |= INS_skip_frame;
	}

	bcs->channel = channel;
	bcs->cs = cs;

	bcs->chstate = 0;
	bcs->use_count = 1;
	bcs->busy = 0;
	bcs->ignore = cs->ignoreframes;

	for (i = 0; i < AT_NUM; ++i)
		bcs->commands[i] = NULL;

	FUNC2(DEBUG_INIT, "  setting up bcs[%d]->hw", channel);
	if (cs->ops->initbcshw(bcs))
		return bcs;

	FUNC2(DEBUG_INIT, "  failed");

	FUNC2(DEBUG_INIT, "  freeing bcs[%d]->skb", channel);
	if (bcs->skb)
		FUNC1(bcs->skb);

	return NULL;
}