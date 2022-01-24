#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct bcma_device {int dummy; } ;
struct TYPE_8__ {struct bcma_device* core; } ;
struct TYPE_7__ {struct bcma_device* core; } ;
struct TYPE_9__ {struct bcma_device* core; } ;
struct bcma_bus {TYPE_3__ drv_gmac_cmn; TYPE_1__* drv_pci; TYPE_2__ drv_mips; TYPE_4__ drv_cc; scalar_t__ num; } ;
struct TYPE_6__ {struct bcma_device* core; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_CORE_4706_MAC_GBIT_COMMON ; 
 int /*<<< orphan*/  BCMA_CORE_MIPS_74K ; 
 int /*<<< orphan*/  BCMA_CORE_PCIE ; 
 int ENOENT ; 
 int /*<<< orphan*/  bcma_bus_next_num ; 
 int FUNC0 (struct bcma_bus*) ; 
 int /*<<< orphan*/  bcma_buses_mutex ; 
 int /*<<< orphan*/  FUNC1 (struct bcma_bus*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct bcma_bus*,char*,...) ; 
 struct bcma_device* FUNC8 (struct bcma_bus*,int /*<<< orphan*/ ) ; 
 struct bcma_device* FUNC9 (struct bcma_bus*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct bcma_bus*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct bcma_bus*) ; 
 int FUNC12 (struct bcma_bus*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(struct bcma_bus *bus)
{
	int err;
	struct bcma_device *core;

	FUNC13(&bcma_buses_mutex);
	bus->num = bcma_bus_next_num++;
	FUNC14(&bcma_buses_mutex);

	/* Scan for devices (cores) */
	err = FUNC0(bus);
	if (err) {
		FUNC7(bus, "Failed to scan: %d\n", err);
		return -1;
	}

	/* Early init CC core */
	core = FUNC8(bus, FUNC1(bus));
	if (core) {
		bus->drv_cc.core = core;
		FUNC2(&bus->drv_cc);
	}

	/* Try to get SPROM */
	err = FUNC12(bus);
	if (err == -ENOENT) {
		FUNC7(bus, "No SPROM available\n");
	} else if (err)
		FUNC7(bus, "Failed to get SPROM: %d\n", err);

	/* Init CC core */
	core = FUNC8(bus, FUNC1(bus));
	if (core) {
		bus->drv_cc.core = core;
		FUNC3(&bus->drv_cc);
	}

	/* Init MIPS core */
	core = FUNC8(bus, BCMA_CORE_MIPS_74K);
	if (core) {
		bus->drv_mips.core = core;
		FUNC5(&bus->drv_mips);
	}

	/* Init PCIE core */
	core = FUNC9(bus, BCMA_CORE_PCIE, 0);
	if (core) {
		bus->drv_pci[0].core = core;
		FUNC6(&bus->drv_pci[0]);
	}

	/* Init PCIE core */
	core = FUNC9(bus, BCMA_CORE_PCIE, 1);
	if (core) {
		bus->drv_pci[1].core = core;
		FUNC6(&bus->drv_pci[1]);
	}

	/* Init GBIT MAC COMMON core */
	core = FUNC8(bus, BCMA_CORE_4706_MAC_GBIT_COMMON);
	if (core) {
		bus->drv_gmac_cmn.core = core;
		FUNC4(&bus->drv_gmac_cmn);
	}

	/* Register found cores */
	FUNC11(bus);

	FUNC10(bus, "Bus registered\n");

	return 0;
}