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
struct dasd_device {scalar_t__ ccw_mem; scalar_t__ erp_mem; struct dasd_device* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*) ; 

void FUNC3(struct dasd_device *device)
{
	FUNC2(device->private);
	FUNC0((unsigned long) device->erp_mem);
	FUNC1((unsigned long) device->ccw_mem, 1);
	FUNC2(device);
}