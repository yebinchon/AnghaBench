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
struct tape_request {struct tape_device* device; } ;
struct tape_device {TYPE_1__* cdev; int /*<<< orphan*/  cdev_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct tape_device*,struct tape_request*) ; 

__attribute__((used)) static void
FUNC4(unsigned long data)
{
	struct tape_request *	request;
	struct tape_device *	device;
	int rc;

	request = (struct tape_request *) data;
	device = request->device;
	FUNC0(!device);

	FUNC1(3, "%08x: Assignment timeout. Device busy.\n",
			device->cdev_id);
	rc = FUNC3(device, request);
	if(rc)
		FUNC1(3, "(%s): Assign timeout: Cancel failed with rc = %i\n",
			FUNC2(&device->cdev->dev), rc);
}