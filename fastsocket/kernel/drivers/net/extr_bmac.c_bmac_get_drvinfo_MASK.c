#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  driver; } ;
struct bmac_data {TYPE_2__* mdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {TYPE_1__ ofdev; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 struct bmac_data* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev, struct ethtool_drvinfo *info)
{
	struct bmac_data *bp = FUNC1(dev);
	FUNC2(info->driver, "bmac");
	FUNC2(info->bus_info, FUNC0(&bp->mdev->ofdev.dev));
}