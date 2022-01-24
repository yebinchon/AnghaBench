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
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
struct efx_nic {int /*<<< orphan*/  pci_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFX_DRIVER_VERSION ; 
 scalar_t__ EFX_REV_SIENA_A0 ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  FUNC0 (struct efx_nic*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct efx_nic*) ; 
 struct efx_nic* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct net_device *net_dev,
				    struct ethtool_drvinfo *info)
{
	struct efx_nic *efx = FUNC2(net_dev);

	FUNC4(info->driver, KBUILD_MODNAME, sizeof(info->driver));
	FUNC4(info->version, EFX_DRIVER_VERSION, sizeof(info->version));
	if (FUNC1(efx) >= EFX_REV_SIENA_A0)
		FUNC0(efx, info->fw_version,
				     sizeof(info->fw_version));
	FUNC4(info->bus_info, FUNC3(efx->pci_dev), sizeof(info->bus_info));
}