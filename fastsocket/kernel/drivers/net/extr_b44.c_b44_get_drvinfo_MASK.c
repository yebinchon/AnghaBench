#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ssb_bus {int bustype; int /*<<< orphan*/  host_pci; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
struct b44 {TYPE_1__* sdev; } ;
struct TYPE_2__ {struct ssb_bus* bus; } ;

/* Variables and functions */
 char* DRV_MODULE_NAME ; 
 char* DRV_MODULE_VERSION ; 
#define  SSB_BUSTYPE_PCI 131 
#define  SSB_BUSTYPE_PCMCIA 130 
#define  SSB_BUSTYPE_SDIO 129 
#define  SSB_BUSTYPE_SSB 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct b44* FUNC1 (struct net_device*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC4 (struct net_device *dev, struct ethtool_drvinfo *info)
{
	struct b44 *bp = FUNC1(dev);
	struct ssb_bus *bus = bp->sdev->bus;

	FUNC3(info->driver, DRV_MODULE_NAME, sizeof(info->driver));
	FUNC3(info->version, DRV_MODULE_VERSION, sizeof(info->version));
	switch (bus->bustype) {
	case SSB_BUSTYPE_PCI:
		FUNC3(info->bus_info, FUNC2(bus->host_pci), sizeof(info->bus_info));
		break;
	case SSB_BUSTYPE_SSB:
		FUNC3(info->bus_info, "SSB", sizeof(info->bus_info));
		break;
	case SSB_BUSTYPE_PCMCIA:
	case SSB_BUSTYPE_SDIO:
		FUNC0(1); /* A device with this bus does not exist. */
		break;
	}
}