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
struct tape_request {int rc; int /*<<< orphan*/ * callback; int /*<<< orphan*/ * callback_data; } ;
struct tape_device {int /*<<< orphan*/  wait_queue; int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int FUNC0 (struct tape_device*,struct tape_request*) ; 
 int /*<<< orphan*/ * __tape_wake_up ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(struct tape_device *device, struct tape_request *request)
{
	int rc;

	FUNC2(FUNC1(device->cdev));
	/* Setup callback */
	request->callback = __tape_wake_up;
	request->callback_data = &device->wait_queue;
	/* Add request to request queue and try to start it. */
	rc = FUNC0(device, request);
	FUNC3(FUNC1(device->cdev));
	if (rc)
		return rc;
	/* Request added to the queue. Wait for its completion. */
	FUNC4(device->wait_queue, (request->callback == NULL));
	/* Get rc from request */
	return request->rc;
}