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
struct tape_request {int dummy; } ;
struct tape_device {TYPE_1__* cdev; } ;
struct irb {int* ecw; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct tape_device*,struct tape_request*,struct irb*,int) ; 
 int FUNC2 (struct tape_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct tape_device *device,
		       struct tape_request *request, struct irb *irb)
{
	if (irb->ecw[3] == 0x41) {
		/*
		 * cu detected incorrect block-id sequence on tape.
		 */
		FUNC0 (&device->cdev->dev, "The block ID sequence on the "
			"tape is incorrect\n");
		return FUNC2(request, -EIO);
	}
	/*
	 * Record sequence error bit is set, but erpa does not
	 * show record sequence error.
	 */
	return FUNC1(device, request, irb, -2);
}