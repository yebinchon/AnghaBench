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
struct fcoe_fcf_device {int selected; } ;
struct fcoe_fcf {int dummy; } ;
struct fcoe_ctlr_device {int /*<<< orphan*/  lock; } ;
struct fcoe_ctlr {int /*<<< orphan*/  ctlr_mutex; struct fcoe_fcf* sel_fcf; } ;

/* Variables and functions */
 struct fcoe_ctlr* FUNC0 (struct fcoe_ctlr_device*) ; 
 struct fcoe_ctlr_device* FUNC1 (struct fcoe_fcf_device*) ; 
 struct fcoe_fcf* FUNC2 (struct fcoe_fcf_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct fcoe_fcf_device *fcf_dev)
{
	struct fcoe_ctlr_device *ctlr_dev = FUNC1(fcf_dev);
	struct fcoe_ctlr *fip = FUNC0(ctlr_dev);
	struct fcoe_fcf *fcf;

	FUNC3(&fip->ctlr_mutex);
	FUNC3(&ctlr_dev->lock);

	fcf = FUNC2(fcf_dev);
	if (fcf)
		fcf_dev->selected = (fcf == fip->sel_fcf) ? 1 : 0;
	else
		fcf_dev->selected = 0;

	FUNC4(&ctlr_dev->lock);
	FUNC4(&fip->ctlr_mutex);
}