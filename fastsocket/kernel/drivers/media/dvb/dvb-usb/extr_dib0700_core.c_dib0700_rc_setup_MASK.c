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
struct urb {int /*<<< orphan*/ * transfer_buffer; int /*<<< orphan*/  status; } ;
struct dvb_usb_device {int /*<<< orphan*/  udev; struct dib0700_state* priv; } ;
struct dib0700_state {int fw_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RC_MSG_SIZE_V1_20 ; 
 int /*<<< orphan*/  dib0700_rc_urb_completion ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct urb* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct urb*,int /*<<< orphan*/ ) ; 

int FUNC7(struct dvb_usb_device *d)
{
	struct dib0700_state *st = d->priv;
	struct urb *purb;
	int ret;

	/* Poll-based. Don't initialize bulk mode */
	if (st->fw_version < 0x10200)
		return 0;

	/* Starting in firmware 1.20, the RC info is provided on a bulk pipe */
	purb = FUNC2(0, GFP_KERNEL);
	if (purb == NULL) {
		FUNC0("rc usb alloc urb failed\n");
		return -ENOMEM;
	}

	purb->transfer_buffer = FUNC1(RC_MSG_SIZE_V1_20, GFP_KERNEL);
	if (purb->transfer_buffer == NULL) {
		FUNC0("rc kzalloc failed\n");
		FUNC4(purb);
		return -ENOMEM;
	}

	purb->status = -EINPROGRESS;
	FUNC3(purb, d->udev, FUNC5(d->udev, 1),
			  purb->transfer_buffer, RC_MSG_SIZE_V1_20,
			  dib0700_rc_urb_completion, d);

	ret = FUNC6(purb, GFP_ATOMIC);
	if (ret)
		FUNC0("rc submit urb failed\n");

	return ret;
}