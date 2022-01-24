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
typedef  int u32 ;
struct typhoon {scalar_t__ card_state; struct pci_dev* pdev; } ;
struct resp_desc {int /*<<< orphan*/  parm2; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; int /*<<< orphan*/  fw_version; } ;
struct cmd_desc {int dummy; } ;

/* Variables and functions */
 char* DRV_MODULE_NAME ; 
 char* DRV_MODULE_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct cmd_desc*,int /*<<< orphan*/ ) ; 
 scalar_t__ Sleeping ; 
 int /*<<< orphan*/  TYPHOON_CMD_READ_VERSIONS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct typhoon* FUNC2 (struct net_device*) ; 
 char* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (struct typhoon*,int,struct cmd_desc*,int,struct resp_desc*) ; 

__attribute__((used)) static void
FUNC8(struct net_device *dev, struct ethtool_drvinfo *info)
{
	struct typhoon *tp = FUNC2(dev);
	struct pci_dev *pci_dev = tp->pdev;
	struct cmd_desc xp_cmd;
	struct resp_desc xp_resp[3];

	FUNC4();
	if(tp->card_state == Sleeping) {
		FUNC6(info->fw_version, "Sleep image");
	} else {
		FUNC0(&xp_cmd, TYPHOON_CMD_READ_VERSIONS);
		if(FUNC7(tp, 1, &xp_cmd, 3, xp_resp) < 0) {
			FUNC6(info->fw_version, "Unknown runtime");
		} else {
			u32 sleep_ver = FUNC1(xp_resp[0].parm2);
			FUNC5(info->fw_version, 32, "%02x.%03x.%03x",
				 sleep_ver >> 24, (sleep_ver >> 12) & 0xfff,
				 sleep_ver & 0xfff);
		}
	}

	FUNC6(info->driver, DRV_MODULE_NAME);
	FUNC6(info->version, DRV_MODULE_VERSION);
	FUNC6(info->bus_info, FUNC3(pci_dev));
}