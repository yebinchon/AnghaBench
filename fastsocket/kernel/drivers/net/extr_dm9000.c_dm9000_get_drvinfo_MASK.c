#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ board_info_t ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARDNAME ; 
 int /*<<< orphan*/  DRV_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct net_device*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev,
			       struct ethtool_drvinfo *info)
{
	board_info_t *dm = FUNC1(dev);

	FUNC0(info->driver, CARDNAME);
	FUNC0(info->version, DRV_VERSION);
	FUNC0(info->bus_info, FUNC2(dm->dev)->name);
}