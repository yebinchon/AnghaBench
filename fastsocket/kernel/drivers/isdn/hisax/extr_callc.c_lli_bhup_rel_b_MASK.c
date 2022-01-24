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
struct Channel {int debug; scalar_t__ data_open; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct Channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISDN_STAT_BHUP ; 
 int /*<<< orphan*/  ST_WAIT_DCOMMAND ; 
 int /*<<< orphan*/  FUNC2 (struct Channel*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct Channel*) ; 

__attribute__((used)) static void
FUNC4(struct FsmInst *fi, int event, void *arg)
{
	struct Channel *chanp = fi->userdata;

	FUNC0(fi, ST_WAIT_DCOMMAND);
	chanp->data_open = 0;
	if (chanp->debug & 1)
		FUNC2(chanp, 0, "STAT_BHUP");
	FUNC1(chanp, ISDN_STAT_BHUP);
	FUNC3(chanp);
}