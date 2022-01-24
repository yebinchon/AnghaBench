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
struct list_head {int dummy; } ;
struct dasd_device {int /*<<< orphan*/  cdev; int /*<<< orphan*/  tasklet_scheduled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct dasd_device*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct dasd_device*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shutdown_waitq ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct dasd_device *device)
{
	struct list_head final_queue;

	FUNC6 (&device->tasklet_scheduled, 0);
	FUNC0(&final_queue);
	FUNC9(FUNC8(device->cdev));
	/* Check expire time of first request on the ccw queue. */
	FUNC1(device);
	/* find final requests on ccw queue */
	FUNC3(device, &final_queue);
	FUNC2(device);
	FUNC10(FUNC8(device->cdev));
	/* Now call the callback function of requests with final status */
	FUNC4(device, &final_queue);
	FUNC9(FUNC8(device->cdev));
	/* Now check if the head of the ccw queue needs to be started. */
	FUNC5(device);
	FUNC10(FUNC8(device->cdev));
	if (FUNC11(&shutdown_waitq))
		FUNC12(&shutdown_waitq);
	FUNC7(device);
}