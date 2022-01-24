#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct bc_state {TYPE_3__* cs; } ;
struct TYPE_8__ {unsigned long data; int /*<<< orphan*/  function; scalar_t__ expires; } ;
struct TYPE_6__ {int bRequest; scalar_t__ wLength; scalar_t__ wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequestType; } ;
struct bas_cardstate {int pending; int /*<<< orphan*/  lock; TYPE_4__ timer_ctrl; int /*<<< orphan*/  urb_ctrl; scalar_t__ retry_ctrl; TYPE_2__ dr_ctrl; int /*<<< orphan*/  udev; } ;
struct TYPE_5__ {struct bas_cardstate* bas; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; TYPE_1__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_USBREQ ; 
 int EBUSY ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int HZ ; 
 int /*<<< orphan*/  OUT_VENDOR_REQ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  req_timeout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bas_cardstate*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_ctrl_callback ; 

__attribute__((used)) static int FUNC11(struct bc_state *bcs, int req, int val, int timeout)
{
	struct bas_cardstate *ucs = bcs->cs->hw.bas;
	int ret;
	unsigned long flags;

	FUNC4(DEBUG_USBREQ, "-------> 0x%02x (%d)", req, val);

	FUNC5(&ucs->lock, flags);
	if (ucs->pending) {
		FUNC6(&ucs->lock, flags);
		FUNC2(bcs->cs->dev,
			"submission of request 0x%02x failed: "
			"request 0x%02x still pending\n",
			req, ucs->pending);
		return -EBUSY;
	}

	ucs->dr_ctrl.bRequestType = OUT_VENDOR_REQ;
	ucs->dr_ctrl.bRequest = req;
	ucs->dr_ctrl.wValue = FUNC1(val);
	ucs->dr_ctrl.wIndex = 0;
	ucs->dr_ctrl.wLength = 0;
	FUNC8(ucs->urb_ctrl, ucs->udev,
			     FUNC9(ucs->udev, 0),
			     (unsigned char*) &ucs->dr_ctrl, NULL, 0,
			     write_ctrl_callback, ucs);
	ucs->retry_ctrl = 0;
	ret = FUNC10(ucs->urb_ctrl, GFP_ATOMIC);
	if (FUNC7(ret)) {
		FUNC2(bcs->cs->dev, "could not submit request 0x%02x: %s\n",
			req, FUNC3(ret));
		FUNC6(&ucs->lock, flags);
		return ret;
	}
	ucs->pending = req;

	if (timeout > 0) {
		FUNC4(DEBUG_USBREQ, "setting timeout of %d/10 secs", timeout);
		ucs->timer_ctrl.expires = jiffies + timeout * HZ / 10;
		ucs->timer_ctrl.data = (unsigned long) bcs;
		ucs->timer_ctrl.function = req_timeout;
		FUNC0(&ucs->timer_ctrl);
	}

	FUNC6(&ucs->lock, flags);
	return 0;
}