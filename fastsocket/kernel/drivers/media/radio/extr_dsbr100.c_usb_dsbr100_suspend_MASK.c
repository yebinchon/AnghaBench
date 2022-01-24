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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct dsbr100_device {scalar_t__ status; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 scalar_t__ STARTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct dsbr100_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct dsbr100_device* FUNC5 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC6(struct usb_interface *intf, pm_message_t message)
{
	struct dsbr100_device *radio = FUNC5(intf);
	int retval;

	if (radio->status == STARTED) {
		retval = FUNC2(radio);
		if (retval < 0)
			FUNC1(&intf->dev, "dsbr100_stop failed\n");

		/* After dsbr100_stop() status set to STOPPED.
		 * If we want driver to start radio on resume
		 * we set status equal to STARTED.
		 * On resume we will check status and run radio if needed.
		 */

		FUNC3(&radio->lock);
		radio->status = STARTED;
		FUNC4(&radio->lock);
	}

	FUNC0(&intf->dev, "going into suspend..\n");

	return 0;
}