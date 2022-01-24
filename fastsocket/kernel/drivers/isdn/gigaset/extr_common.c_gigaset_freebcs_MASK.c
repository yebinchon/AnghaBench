#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bc_state {int /*<<< orphan*/ ** commands; scalar_t__ skb; int /*<<< orphan*/  channel; int /*<<< orphan*/  at_state; TYPE_1__* cs; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* freebcshw ) (struct bc_state*) ;} ;
struct TYPE_3__ {TYPE_2__* ops; } ;

/* Variables and functions */
 int AT_NUM ; 
 int /*<<< orphan*/  DEBUG_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct bc_state*) ; 

__attribute__((used)) static void FUNC5(struct bc_state *bcs)
{
	int i;

	FUNC2(DEBUG_INIT, "freeing bcs[%d]->hw", bcs->channel);
	if (!bcs->cs->ops->freebcshw(bcs)) {
		FUNC2(DEBUG_INIT, "failed");
	}

	FUNC2(DEBUG_INIT, "clearing bcs[%d]->at_state", bcs->channel);
	FUNC0(&bcs->at_state);
	FUNC2(DEBUG_INIT, "freeing bcs[%d]->skb", bcs->channel);

	if (bcs->skb)
		FUNC1(bcs->skb);
	for (i = 0; i < AT_NUM; ++i) {
		FUNC3(bcs->commands[i]);
		bcs->commands[i] = NULL;
	}
}