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
struct dasd_eckd_private {TYPE_1__* lcu; } ;
struct dasd_device {scalar_t__ private; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  UPDATE_PENDING ; 
 int FUNC0 (struct dasd_device*) ; 

int FUNC1(struct dasd_device *device)
{
	struct dasd_eckd_private *private;
	private = (struct dasd_eckd_private *) device->private;
	private->lcu->flags |= UPDATE_PENDING;
	return FUNC0(device);
}