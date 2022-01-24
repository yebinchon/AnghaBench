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
struct ap_message {int /*<<< orphan*/  (* receive ) (struct ap_device*,struct ap_message*,int /*<<< orphan*/ ) ;} ;
struct ap_device {int unregistered; int /*<<< orphan*/  device; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct ap_device*,struct ap_message*) ; 
 int FUNC3 (struct ap_device*,unsigned long*) ; 
 int /*<<< orphan*/  ap_poll_wait ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ap_device*,struct ap_message*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct ap_device *ap_dev, struct ap_message *ap_msg)
{
	unsigned long flags;
	int rc;

	/* For asynchronous message handling a valid receive-callback
	 * is required. */
	FUNC0(!ap_msg->receive);

	FUNC5(&ap_dev->lock);
	if (!ap_dev->unregistered) {
		/* Make room on the queue by polling for finished requests. */
		rc = FUNC3(ap_dev, &flags);
		if (!rc)
			rc = FUNC2(ap_dev, ap_msg);
		if (!rc)
			FUNC8(&ap_poll_wait);
		if (rc == -ENODEV)
			ap_dev->unregistered = 1;
	} else {
		ap_msg->receive(ap_dev, ap_msg, FUNC1(-ENODEV));
		rc = -ENODEV;
	}
	FUNC6(&ap_dev->lock);
	if (rc == -ENODEV)
		FUNC4(&ap_dev->device);
}