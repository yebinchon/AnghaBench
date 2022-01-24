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
struct usb_ctrlrequest {void* wLength; void* wIndex; void* wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bRequestType; } ;
struct ub_scsi_cmd {int dummy; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct ub_dev {TYPE_1__ work_timer; int /*<<< orphan*/  work_done; int /*<<< orphan*/  work_urb; int /*<<< orphan*/  send_ctrl_pipe; int /*<<< orphan*/  dev; struct usb_ctrlrequest work_cr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ UB_CTRL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int USB_DIR_IN ; 
 int USB_ENDPOINT_HALT ; 
 int /*<<< orphan*/  USB_RECIP_ENDPOINT ; 
 int /*<<< orphan*/  USB_REQ_CLEAR_FEATURE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 void* FUNC2 (int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ub_urb_complete ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ub_dev*) ; 
 int FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct ub_dev *sc, struct ub_scsi_cmd *cmd,
    int stalled_pipe)
{
	int endp;
	struct usb_ctrlrequest *cr;
	int rc;

	endp = FUNC5(stalled_pipe);
	if (FUNC6 (stalled_pipe))
		endp |= USB_DIR_IN;

	cr = &sc->work_cr;
	cr->bRequestType = USB_RECIP_ENDPOINT;
	cr->bRequest = USB_REQ_CLEAR_FEATURE;
	cr->wValue = FUNC2(USB_ENDPOINT_HALT);
	cr->wIndex = FUNC2(endp);
	cr->wLength = FUNC2(0);

	FUNC0(sc->work_done);

	FUNC4(&sc->work_urb, sc->dev, sc->send_ctrl_pipe,
	    (unsigned char*) cr, NULL, 0, ub_urb_complete, sc);

	if ((rc = FUNC7(&sc->work_urb, GFP_ATOMIC)) != 0) {
		FUNC3(&sc->work_done);
		return rc;
	}

	sc->work_timer.expires = jiffies + UB_CTRL_TIMEOUT;
	FUNC1(&sc->work_timer);
	return 0;
}