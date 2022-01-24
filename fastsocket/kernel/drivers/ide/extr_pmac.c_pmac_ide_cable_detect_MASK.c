#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct device_node {int dummy; } ;
struct TYPE_6__ {struct device_node* node; } ;
typedef  TYPE_2__ pmac_ide_hwif_t ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct TYPE_7__ {TYPE_1__ gendev; } ;
typedef  TYPE_3__ ide_hwif_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_CBL_PATA40 ; 
 int /*<<< orphan*/  ATA_CBL_PATA40_SHORT ; 
 int /*<<< orphan*/  ATA_CBL_PATA80 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device_node*,char*) ; 
 struct device_node* FUNC2 (char*) ; 
 char* FUNC3 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,int) ; 

__attribute__((used)) static u8 FUNC5(ide_hwif_t *hwif)
{
	pmac_ide_hwif_t *pmif =
		(pmac_ide_hwif_t *)FUNC0(hwif->gendev.parent);
	struct device_node *np = pmif->node;
	const char *cable = FUNC3(np, "cable-type", NULL);
	struct device_node *root = FUNC2("/");
	const char *model = FUNC3(root, "model", NULL);

	/* Get cable type from device-tree. */
	if (cable && !FUNC4(cable, "80-", 3)) {
		/* Some drives fail to detect 80c cable in PowerBook */
		/* These machine use proprietary short IDE cable anyway */
		if (!FUNC4(model, "PowerBook", 9))
			return ATA_CBL_PATA40_SHORT;
		else
			return ATA_CBL_PATA80;
	}

	/*
	 * G5's seem to have incorrect cable type in device-tree.
	 * Let's assume they have a 80 conductor cable, this seem
	 * to be always the case unless the user mucked around.
	 */
	if (FUNC1(np, "K2-UATA") ||
	    FUNC1(np, "shasta-ata"))
		return ATA_CBL_PATA80;

	return ATA_CBL_PATA40;
}