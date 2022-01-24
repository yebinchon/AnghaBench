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
struct domain_device {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISCE_PROBE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct domain_device*) ; 

int FUNC2(struct domain_device *dev)
{
	int res;

	res = FUNC1(dev);
	if (res)
		return res;
	FUNC0(dev->port, DISCE_PROBE);

	return 0;
}