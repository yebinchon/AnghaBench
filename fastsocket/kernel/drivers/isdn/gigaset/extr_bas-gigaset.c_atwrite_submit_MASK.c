#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct bas_cardstate* bas; } ;
struct cardstate {int /*<<< orphan*/  dev; TYPE_1__ hw; } ;
struct TYPE_6__ {unsigned long data; int /*<<< orphan*/  function; scalar_t__ expires; } ;
struct TYPE_5__ {int /*<<< orphan*/  wLength; scalar_t__ wIndex; scalar_t__ wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bRequestType; } ;
struct bas_cardstate {TYPE_3__ timer_atrdy; int /*<<< orphan*/  urb_cmd_out; TYPE_2__ dr_cmd_out; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int ATRDY_TIMEOUT ; 
 int BS_ATREADY ; 
 int BS_ATTIMER ; 
 int BS_ATWRPEND ; 
 int /*<<< orphan*/  DEBUG_OUTPUT ; 
 int /*<<< orphan*/  DEBUG_USBREQ ; 
 int EBUSY ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  HD_WRITE_ATMESSAGE ; 
 int HZ ; 
 int /*<<< orphan*/  OUT_VENDOR_REQ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  atrdy_timeout ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (struct bas_cardstate*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,unsigned char*,int,int /*<<< orphan*/ ,struct cardstate*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_command_callback ; 

__attribute__((used)) static int FUNC10(struct cardstate *cs, unsigned char *buf, int len)
{
	struct bas_cardstate *ucs = cs->hw.bas;
	int rc;

	FUNC4(DEBUG_USBREQ, "-------> HD_WRITE_ATMESSAGE (%d)", len);

	if (FUNC6(ucs, BS_ATWRPEND, 0) & BS_ATWRPEND) {
		FUNC2(cs->dev,
			"could not submit HD_WRITE_ATMESSAGE: URB busy\n");
		return -EBUSY;
	}

	ucs->dr_cmd_out.bRequestType = OUT_VENDOR_REQ;
	ucs->dr_cmd_out.bRequest = HD_WRITE_ATMESSAGE;
	ucs->dr_cmd_out.wValue = 0;
	ucs->dr_cmd_out.wIndex = 0;
	ucs->dr_cmd_out.wLength = FUNC1(len);
	FUNC7(ucs->urb_cmd_out, ucs->udev,
			     FUNC8(ucs->udev, 0),
			     (unsigned char*) &ucs->dr_cmd_out, buf, len,
			     write_command_callback, cs);
	rc = FUNC9(ucs->urb_cmd_out, GFP_ATOMIC);
	if (FUNC5(rc)) {
		FUNC6(ucs, 0, BS_ATWRPEND);
		FUNC2(cs->dev, "could not submit HD_WRITE_ATMESSAGE: %s\n",
			FUNC3(rc));
		return rc;
	}

	/* submitted successfully, start timeout if necessary */
	if (!(FUNC6(ucs, BS_ATTIMER, BS_ATREADY) & BS_ATTIMER)) {
		FUNC4(DEBUG_OUTPUT, "setting ATREADY timeout of %d/10 secs",
			ATRDY_TIMEOUT);
		ucs->timer_atrdy.expires = jiffies + ATRDY_TIMEOUT * HZ / 10;
		ucs->timer_atrdy.data = (unsigned long) cs;
		ucs->timer_atrdy.function = atrdy_timeout;
		FUNC0(&ucs->timer_atrdy);
	}
	return 0;
}