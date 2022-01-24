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
struct net_device {int dummy; } ;
struct cas {int link_cntl; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int BMCR_ANENABLE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct cas*,int /*<<< orphan*/ *) ; 
 struct cas* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct cas *cp = FUNC1(dev);
	unsigned long flags;

	if ((cp->link_cntl & BMCR_ANENABLE) == 0)
		return -EINVAL;

	/* Restart link process. */
	FUNC2(&cp->lock, flags);
	FUNC0(cp, NULL);
	FUNC3(&cp->lock, flags);

	return 0;
}