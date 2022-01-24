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
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACER_CAP_THREEG ; 
 int /*<<< orphan*/  dev_attr_interface ; 
 int /*<<< orphan*/  dev_attr_threeg ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct platform_device *device)
{
	if (FUNC1(ACER_CAP_THREEG))
		FUNC0(&device->dev, &dev_attr_threeg);

	FUNC0(&device->dev, &dev_attr_interface);

	return 0;
}