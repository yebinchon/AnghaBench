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
struct cardstate {scalar_t__ retry_count; int channels; TYPE_2__* bcs; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__ cid; int /*<<< orphan*/  pending_commands; } ;
struct TYPE_4__ {TYPE_1__ at_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  MS_INIT ; 
 int /*<<< orphan*/  PC_CID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cardstate*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct cardstate *cs, int channel)
{
	int i;

	if (--cs->retry_count <= 0)
		return 0;

	for (i = 0; i < cs->channels; ++i)
		if (cs->bcs[i].at_state.cid > 0)
			return 0;

	if (channel < 0)
		FUNC0(cs->dev,
		    "Could not enter cid mode. Reinit device and try again.\n");
	else {
		FUNC0(cs->dev,
		    "Could not get a call id. Reinit device and try again.\n");
		cs->bcs[channel].at_state.pending_commands |= PC_CID;
	}
	FUNC1(cs, MS_INIT);
	return 1;
}