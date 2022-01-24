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
struct fcoe_ctlr {scalar_t__ state; int /*<<< orphan*/  lp; int /*<<< orphan*/  ctlr_mutex; } ;

/* Variables and functions */
 scalar_t__ FIP_ST_LINK_WAIT ; 
 int /*<<< orphan*/  FUNC0 (struct fcoe_ctlr*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fcoe_ctlr*) ; 
 int /*<<< orphan*/  FUNC3 (struct fcoe_ctlr*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct fcoe_ctlr *fip)
{
	int link_dropped;

	FUNC0(fip, "link down.\n");
	FUNC4(&fip->ctlr_mutex);
	FUNC2(fip);
	link_dropped = fip->state != FIP_ST_LINK_WAIT;
	FUNC3(fip, FIP_ST_LINK_WAIT);
	FUNC5(&fip->ctlr_mutex);

	if (link_dropped)
		FUNC1(fip->lp);
	return link_dropped;
}