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
struct FsmInst {struct Channel* userdata; } ;
struct Channel {int debug; scalar_t__ leased; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISDN_STAT_DHUP ; 
 int /*<<< orphan*/  FUNC1 (struct Channel*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct FsmInst*) ; 
 int /*<<< orphan*/  FUNC3 (struct Channel*) ; 
 int /*<<< orphan*/  FUNC4 (struct FsmInst*,struct Channel*) ; 

__attribute__((used)) static void
FUNC5(struct FsmInst *fi, int event, void *arg)
{
	struct Channel *chanp = fi->userdata;

	if (chanp->leased) {
		FUNC4(fi, chanp);
	} else {
		if (chanp->debug & 1)
			FUNC1(chanp, 0, "STAT_DHUP");
		FUNC3(chanp);
		FUNC0(chanp, ISDN_STAT_DHUP);
		FUNC2(fi);
	}
}