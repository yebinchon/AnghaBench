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
struct IsdnCardState {struct BCState* bcs; } ;
struct BCState {int channel; scalar_t__ Flag; int /*<<< orphan*/ * BC_Close; int /*<<< orphan*/ * BC_SetStack; int /*<<< orphan*/  aclock; int /*<<< orphan*/  tqueue; struct IsdnCardState* cs; } ;

/* Variables and functions */
 int /*<<< orphan*/  BChannel_bh ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct IsdnCardState *cs, int bc)
{
	struct BCState *bcs = cs->bcs + bc;

	bcs->cs = cs;
	bcs->channel = bc;
	FUNC0(&bcs->tqueue, BChannel_bh);
	FUNC1(&bcs->aclock);
	bcs->BC_SetStack = NULL;
	bcs->BC_Close = NULL;
	bcs->Flag = 0;
}