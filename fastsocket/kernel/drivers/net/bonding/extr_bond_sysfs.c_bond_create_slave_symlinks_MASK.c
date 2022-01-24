#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct net_device {char* name; TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

int FUNC2(struct net_device *master,
			       struct net_device *slave)
{
	char linkname[IFNAMSIZ+7];
	int ret = 0;

	/* first, create a link from the slave back to the master */
	ret = FUNC1(&(slave->dev.kobj), &(master->dev.kobj),
				"master");
	if (ret)
		return ret;
	/* next, create a link from the master to the slave */
	FUNC0(linkname, "slave_%s", slave->name);
	ret = FUNC1(&(master->dev.kobj), &(slave->dev.kobj),
				linkname);
	return ret;

}