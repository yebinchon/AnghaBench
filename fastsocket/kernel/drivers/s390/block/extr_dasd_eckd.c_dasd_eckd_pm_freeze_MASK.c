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
struct dasd_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*) ; 

__attribute__((used)) static int FUNC2(struct dasd_device *device)
{
	/*
	 * the device should be disconnected from our LCU structure
	 * on restore we will reconnect it and reread LCU specific
	 * information like PAV support that might have changed
	 */
	FUNC1(device);
	FUNC0(device);

	return 0;
}