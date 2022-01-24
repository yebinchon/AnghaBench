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
struct ethtool_drvinfo {char* driver; char* version; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  DRV_VERSION ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct net_device *dev, struct ethtool_drvinfo *info)
{
	FUNC0(info->driver, DRV_NAME, sizeof(info->driver) - 1);
	info->driver[sizeof(info->driver) - 1] = '\0';
	FUNC0(info->version, DRV_VERSION, sizeof(info->version) - 1);
	info->version[sizeof(info->version) - 1] = '\0';
}