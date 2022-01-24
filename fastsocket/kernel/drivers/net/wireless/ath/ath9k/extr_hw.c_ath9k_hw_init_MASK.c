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
struct TYPE_4__ {int devid; } ;
struct ath_hw {TYPE_2__ hw_version; } ;
struct ath_common {TYPE_1__* bus_ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  ath_bus_type; } ;

/* Variables and functions */
#define  AR2427_DEVID_PCIE 146 
#define  AR5416_AR9100_DEVID 145 
#define  AR5416_DEVID_PCI 144 
#define  AR5416_DEVID_PCIE 143 
#define  AR9160_DEVID_PCI 142 
#define  AR9280_DEVID_PCI 141 
#define  AR9280_DEVID_PCIE 140 
#define  AR9285_DEVID_PCIE 139 
#define  AR9287_DEVID_PCI 138 
#define  AR9287_DEVID_PCIE 137 
#define  AR9300_DEVID_AR9330 136 
#define  AR9300_DEVID_AR9340 135 
#define  AR9300_DEVID_AR9462 134 
#define  AR9300_DEVID_AR9485_PCIE 133 
#define  AR9300_DEVID_AR9565 132 
#define  AR9300_DEVID_AR9580 131 
#define  AR9300_DEVID_PCIE 130 
#define  AR9300_DEVID_QCA955X 129 
#define  AR9485_DEVID_AR1111 128 
 int /*<<< orphan*/  ATH_USB ; 
 int EOPNOTSUPP ; 
 int FUNC0 (struct ath_hw*) ; 
 struct ath_common* FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_common*,char*,int) ; 

int FUNC3(struct ath_hw *ah)
{
	int ret;
	struct ath_common *common = FUNC1(ah);

	/* These are all the AR5008/AR9001/AR9002/AR9003 hardware family of chipsets */
	switch (ah->hw_version.devid) {
	case AR5416_DEVID_PCI:
	case AR5416_DEVID_PCIE:
	case AR5416_AR9100_DEVID:
	case AR9160_DEVID_PCI:
	case AR9280_DEVID_PCI:
	case AR9280_DEVID_PCIE:
	case AR9285_DEVID_PCIE:
	case AR9287_DEVID_PCI:
	case AR9287_DEVID_PCIE:
	case AR2427_DEVID_PCIE:
	case AR9300_DEVID_PCIE:
	case AR9300_DEVID_AR9485_PCIE:
	case AR9300_DEVID_AR9330:
	case AR9300_DEVID_AR9340:
	case AR9300_DEVID_QCA955X:
	case AR9300_DEVID_AR9580:
	case AR9300_DEVID_AR9462:
	case AR9485_DEVID_AR1111:
	case AR9300_DEVID_AR9565:
		break;
	default:
		if (common->bus_ops->ath_bus_type == ATH_USB)
			break;
		FUNC2(common, "Hardware device ID 0x%04x not supported\n",
			ah->hw_version.devid);
		return -EOPNOTSUPP;
	}

	ret = FUNC0(ah);
	if (ret) {
		FUNC2(common,
			"Unable to initialize hardware; initialization status: %d\n",
			ret);
		return ret;
	}

	return 0;
}