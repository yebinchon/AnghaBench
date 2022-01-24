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
struct IsdnCardState {int /*<<< orphan*/  HW_Flags; } ;
struct BCState {int /*<<< orphan*/  channel; struct IsdnCardState* cs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_LOCK_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct BCState*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct BCState *bcs)
{
	struct IsdnCardState *cs = bcs->cs;

	if (!FUNC3(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
	  FUNC1(bcs);
		FUNC2(FLG_LOCK_ATOMIC, &cs->HW_Flags);
	} else
		FUNC0(cs, "send_data %d blocked", bcs->channel);
}