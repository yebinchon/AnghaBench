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
struct usb_interface {int dummy; } ;
struct TYPE_2__ {struct bas_cardstate* bas; } ;
struct cardstate {int /*<<< orphan*/  bcs; int /*<<< orphan*/  dev; TYPE_1__ hw; } ;
struct bas_cardstate {int basstate; int /*<<< orphan*/  timer_ctrl; int /*<<< orphan*/  urb_int_in; int /*<<< orphan*/  urb_ctrl; int /*<<< orphan*/  pending; int /*<<< orphan*/  waitqueue; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int BAS_TIMEOUT ; 
 int BS_ATOPEN ; 
 int BS_ATRDPEND ; 
 int BS_ATWRPEND ; 
 int BS_B1OPEN ; 
 int BS_B2OPEN ; 
 int BS_SUSPEND ; 
 int /*<<< orphan*/  DEBUG_SUSPEND ; 
 int EBUSY ; 
 int /*<<< orphan*/  HD_CLOSE_ATCHANNEL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct bas_cardstate*,int,int) ; 
 struct cardstate* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC8(struct usb_interface *intf, pm_message_t message)
{
	struct cardstate *cs = FUNC5(intf);
	struct bas_cardstate *ucs = cs->hw.bas;
	int rc;

	/* set suspend flag; this stops AT command/response traffic */
	if (FUNC4(ucs, BS_SUSPEND, 0) & BS_SUSPEND) {
		FUNC2(DEBUG_SUSPEND, "already suspended");
		return 0;
	}

	/* wait a bit for blocking conditions to go away */
	rc = FUNC7(ucs->waitqueue,
			!(ucs->basstate &
			  (BS_B1OPEN|BS_B2OPEN|BS_ATRDPEND|BS_ATWRPEND)),
			BAS_TIMEOUT*HZ/10);
	FUNC2(DEBUG_SUSPEND, "wait_event_timeout() -> %d", rc);

	/* check for conditions preventing suspend */
	if (ucs->basstate & (BS_B1OPEN|BS_B2OPEN|BS_ATRDPEND|BS_ATWRPEND)) {
		FUNC1(cs->dev, "cannot suspend:\n");
		if (ucs->basstate & BS_B1OPEN)
			FUNC1(cs->dev, " B channel 1 open\n");
		if (ucs->basstate & BS_B2OPEN)
			FUNC1(cs->dev, " B channel 2 open\n");
		if (ucs->basstate & BS_ATRDPEND)
			FUNC1(cs->dev, " receiving AT reply\n");
		if (ucs->basstate & BS_ATWRPEND)
			FUNC1(cs->dev, " sending AT command\n");
		FUNC4(ucs, 0, BS_SUSPEND);
		return -EBUSY;
	}

	/* close AT channel if open */
	if (ucs->basstate & BS_ATOPEN) {
		FUNC2(DEBUG_SUSPEND, "closing AT channel");
		rc = FUNC3(cs->bcs, HD_CLOSE_ATCHANNEL, 0, 0);
		if (rc) {
			FUNC4(ucs, 0, BS_SUSPEND);
			return rc;
		}
		FUNC7(ucs->waitqueue, !ucs->pending,
				   BAS_TIMEOUT*HZ/10);
		/* in case of timeout, proceed anyway */
	}

	/* kill all URBs and timers that might still be pending */
	FUNC6(ucs->urb_ctrl);
	FUNC6(ucs->urb_int_in);
	FUNC0(&ucs->timer_ctrl);

	FUNC2(DEBUG_SUSPEND, "suspend complete");
	return 0;
}