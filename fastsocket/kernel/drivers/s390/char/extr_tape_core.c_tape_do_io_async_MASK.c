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
struct tape_request {int dummy; } ;
struct tape_device {int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct tape_device*,struct tape_request*) ; 
 int FUNC1 (struct tape_device*,struct tape_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(struct tape_device *device, struct tape_request *request)
{
	int rc;

	FUNC0(6, "tape_do_io_async(%p, %p)\n", device, request);

	FUNC3(FUNC2(device->cdev));
	/* Add request to request queue and try to start it. */
	rc = FUNC1(device, request);
	FUNC4(FUNC2(device->cdev));
	return rc;
}