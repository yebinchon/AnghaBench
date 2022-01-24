#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
struct TYPE_4__ {int /*<<< orphan*/  ioc; } ;
struct TYPE_5__ {TYPE_1__ ioceth; } ;
struct bnad {int /*<<< orphan*/  pcidev; int /*<<< orphan*/  bna_lock; TYPE_2__ bna; } ;
struct TYPE_6__ {int /*<<< orphan*/  fw_ver; } ;
struct bfa_ioc_attr {TYPE_3__ adapter_attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNAD_NAME ; 
 int /*<<< orphan*/  BNAD_VERSION ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bfa_ioc_attr*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc_attr*) ; 
 struct bfa_ioc_attr* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct bnad* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(struct net_device *netdev, struct ethtool_drvinfo *drvinfo)
{
	struct bnad *bnad = FUNC3(netdev);
	struct bfa_ioc_attr *ioc_attr;
	unsigned long flags;

	FUNC7(drvinfo->driver, BNAD_NAME, sizeof(drvinfo->driver));
	FUNC7(drvinfo->version, BNAD_VERSION, sizeof(drvinfo->version));

	ioc_attr = FUNC2(sizeof(*ioc_attr), GFP_KERNEL);
	if (ioc_attr) {
		FUNC5(&bnad->bna_lock, flags);
		FUNC0(&bnad->bna.ioceth.ioc, ioc_attr);
		FUNC6(&bnad->bna_lock, flags);

		FUNC7(drvinfo->fw_version, ioc_attr->adapter_attr.fw_ver,
			sizeof(drvinfo->fw_version));
		FUNC1(ioc_attr);
	}

	FUNC7(drvinfo->bus_info, FUNC4(bnad->pcidev),
		sizeof(drvinfo->bus_info));
}