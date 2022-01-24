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
struct device_driver {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device_driver*,struct device*) ; 
 int FUNC1 (struct device_driver*,struct device*) ; 

__attribute__((used)) static int FUNC2(struct device_driver *drv, void *data)
{
	struct device *dev = data;

	if (!FUNC0(drv, dev))
		return 0;

	return FUNC1(drv, dev);
}