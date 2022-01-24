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
struct sas_phy {int /*<<< orphan*/  port_siblings; struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 

void
FUNC6(struct sas_phy *phy)
{
	struct device *dev = &phy->dev;

	/* this happens if the phy is still part of a port when deleted */
	FUNC0(!FUNC2(&phy->port_siblings));

	FUNC5(dev);
	FUNC1(dev);
	FUNC4(dev);
	FUNC3(dev);
}