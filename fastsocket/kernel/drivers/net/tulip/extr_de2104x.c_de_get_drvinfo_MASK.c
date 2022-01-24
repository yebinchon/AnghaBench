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
struct ethtool_drvinfo {int /*<<< orphan*/  eedump_len; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
struct de_private {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DE_EEPROM_SIZE ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  DRV_VERSION ; 
 struct de_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3 (struct net_device *dev,struct ethtool_drvinfo *info)
{
	struct de_private *de = FUNC0(dev);

	FUNC2 (info->driver, DRV_NAME);
	FUNC2 (info->version, DRV_VERSION);
	FUNC2 (info->bus_info, FUNC1(de->pdev));
	info->eedump_len = DE_EEPROM_SIZE;
}