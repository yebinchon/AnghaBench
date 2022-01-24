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
struct enclosure_component {scalar_t__ dev; } ;
struct device {scalar_t__ parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct enclosure_component*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct enclosure_component* FUNC2 (struct device*) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct enclosure_component *cdev = FUNC2(dev);

	if (cdev->dev) {
		FUNC0(cdev);
		FUNC1(cdev->dev);
	}
	FUNC1(dev->parent);
}