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
struct urb {int /*<<< orphan*/  transfer_flags; } ;
struct TYPE_2__ {int len; } ;
struct carl9170_cmd {TYPE_1__ hdr; } ;
struct ar9170 {int /*<<< orphan*/  tx_cmd; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR9170_USB_EP_CMD ; 
 int CARL9170_MAX_CMD_LEN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct ar9170*) ; 
 int /*<<< orphan*/  URB_FREE_BUFFER ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  carl9170_usb_cmd_complete ; 
 int FUNC2 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC3 (struct carl9170_cmd*) ; 
 struct urb* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct carl9170_cmd*,int,int /*<<< orphan*/ ,struct ar9170*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(struct ar9170 *ar, struct carl9170_cmd *cmd,
			const bool free_buf)
{
	struct urb *urb;
	int err = 0;

	if (!FUNC0(ar)) {
		err = -EPERM;
		goto err_free;
	}

	if (FUNC1(cmd->hdr.len > CARL9170_MAX_CMD_LEN - 4)) {
		err = -EINVAL;
		goto err_free;
	}

	urb = FUNC4(0, GFP_ATOMIC);
	if (!urb) {
		err = -ENOMEM;
		goto err_free;
	}

	FUNC6(urb, ar->udev, FUNC8(ar->udev,
		AR9170_USB_EP_CMD), cmd, cmd->hdr.len + 4,
		carl9170_usb_cmd_complete, ar, 1);

	if (free_buf)
		urb->transfer_flags |= URB_FREE_BUFFER;

	FUNC5(urb, &ar->tx_cmd);
	FUNC7(urb);

	return FUNC2(ar);

err_free:
	if (free_buf)
		FUNC3(cmd);

	return err;
}