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
typedef  int /*<<< orphan*/  vers ;
typedef  int u32 ;
struct net_device {int dummy; } ;
struct ipw_priv {int /*<<< orphan*/  pci_dev; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  eedump_len; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
typedef  int /*<<< orphan*/  date ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  DRV_VERSION ; 
 int /*<<< orphan*/  IPW_EEPROM_IMAGE_SIZE ; 
 int /*<<< orphan*/  IPW_ORD_STAT_FW_DATE ; 
 int /*<<< orphan*/  IPW_ORD_STAT_FW_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct ipw_priv*,int /*<<< orphan*/ ,char*,int*) ; 
 struct ipw_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev,
				    struct ethtool_drvinfo *info)
{
	struct ipw_priv *p = FUNC1(dev);
	char vers[64];
	char date[32];
	u32 len;

	FUNC4(info->driver, DRV_NAME, sizeof(info->driver));
	FUNC4(info->version, DRV_VERSION, sizeof(info->version));

	len = sizeof(vers);
	FUNC0(p, IPW_ORD_STAT_FW_VERSION, vers, &len);
	len = sizeof(date);
	FUNC0(p, IPW_ORD_STAT_FW_DATE, date, &len);

	FUNC3(info->fw_version, sizeof(info->fw_version), "%s (%s)",
		 vers, date);
	FUNC4(info->bus_info, FUNC2(p->pci_dev),
		sizeof(info->bus_info));
	info->eedump_len = IPW_EEPROM_IMAGE_SIZE;
}