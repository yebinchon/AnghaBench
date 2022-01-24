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
struct domain_device {scalar_t__ dev_type; int /*<<< orphan*/  port; int /*<<< orphan*/  rphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISCE_PROBE ; 
 int ENODEV ; 
 scalar_t__ SATA_PM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct domain_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct domain_device*) ; 
 int FUNC3 (struct domain_device*) ; 

int FUNC4(struct domain_device *dev)
{
	int res;

	if (dev->dev_type == SATA_PM)
		return -ENODEV;

	FUNC2(dev);
	FUNC1(dev, dev->rphy);

	res = FUNC3(dev);
	if (res)
		return res;

	FUNC0(dev->port, DISCE_PROBE);
	return 0;
}