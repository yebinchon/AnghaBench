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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  device_block ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  target_block ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 

void
FUNC4(struct device *dev)
{
	if (FUNC1(dev))
		FUNC2(FUNC3(dev), NULL,
					device_block);
	else
		FUNC0(dev, NULL, target_block);
}