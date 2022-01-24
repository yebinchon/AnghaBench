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
 int /*<<< orphan*/  dev_attr_stats ; 
 int FUNC0 (struct device*,int /*<<< orphan*/ *) ; 

int FUNC1(struct device *dev)
{
	int rc;

	rc = FUNC0(dev, &dev_attr_stats);

	return rc;
}