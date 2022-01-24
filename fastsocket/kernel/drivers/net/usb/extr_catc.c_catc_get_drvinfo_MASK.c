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
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
struct catc {int /*<<< orphan*/  usbdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_VERSION ; 
 int /*<<< orphan*/  ETHTOOL_BUSINFO_LEN ; 
 int /*<<< orphan*/  driver_name ; 
 struct catc* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev,
			     struct ethtool_drvinfo *info)
{
	struct catc *catc = FUNC0(dev);
	FUNC1(info->driver, driver_name, ETHTOOL_BUSINFO_LEN);
	FUNC1(info->version, DRIVER_VERSION, ETHTOOL_BUSINFO_LEN);
	FUNC2 (catc->usbdev, info->bus_info, sizeof info->bus_info);
}