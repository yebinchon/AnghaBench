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
struct arcnet_local {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct net_device* FUNC0 (int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arcdev_setup ; 
 struct arcnet_local* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct net_device *FUNC3(const char *name)
{
	struct net_device *dev;

	dev = FUNC0(sizeof(struct arcnet_local),
			   name && *name ? name : "arc%d", arcdev_setup);
	if(dev) {
		struct arcnet_local *lp = FUNC1(dev);
		FUNC2(&lp->lock);
	}

	return dev;
}