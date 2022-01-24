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
struct zd_usb {int cmd_error; scalar_t__ in_async; int /*<<< orphan*/  submitted_cmds; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int ENOENT ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC5 (struct zd_usb*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct zd_usb*) ; 
 TYPE_1__* FUNC7 (struct zd_usb*) ; 

int FUNC8(struct zd_usb *usb, unsigned int timeout)
{
	int r;

	FUNC0(FUNC2(&FUNC7(usb)->mutex));
	FUNC0(usb->in_async);

	/* Submit last iowrite16v URB */
	r = FUNC5(usb, true);
	if (r) {
		FUNC1(FUNC6(usb),
			"error in zd_submit_waiting_usb(). "
			"Error number %d\n", r);

		FUNC3(&usb->submitted_cmds);
		goto error;
	}

	if (timeout)
		timeout = FUNC4(&usb->submitted_cmds,
							timeout);
	if (!timeout) {
		FUNC3(&usb->submitted_cmds);
		if (usb->cmd_error == -ENOENT) {
			FUNC1(FUNC6(usb), "timed out");
			r = -ETIMEDOUT;
			goto error;
		}
	}

	r = usb->cmd_error;
error:
	usb->in_async = 0;
	return r;
}