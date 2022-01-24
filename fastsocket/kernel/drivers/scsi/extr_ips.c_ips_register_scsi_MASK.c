#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct Scsi_Host {int max_sectors; scalar_t__ can_queue; scalar_t__ max_channel; int /*<<< orphan*/  max_lun; int /*<<< orphan*/  max_id; TYPE_1__* hostt; int /*<<< orphan*/  use_clustering; int /*<<< orphan*/  cmd_per_lun; int /*<<< orphan*/  sg_tablesize; scalar_t__ unique_id; } ;
struct TYPE_12__ {TYPE_9__* pcidev; scalar_t__ max_cmds; scalar_t__ nbus; int /*<<< orphan*/  nlun; int /*<<< orphan*/  ntargets; scalar_t__ mem_addr; scalar_t__ io_addr; } ;
typedef  TYPE_2__ ips_ha_t ;
struct TYPE_13__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {int /*<<< orphan*/  use_clustering; int /*<<< orphan*/  cmd_per_lun; scalar_t__ can_queue; int /*<<< orphan*/  sg_tablesize; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_9__*,char*) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  do_ipsintr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  ips_driver_template ; 
 TYPE_2__** ips_ha ; 
 int /*<<< orphan*/  ips_name ; 
 struct Scsi_Host** ips_sh ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_2__*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC6 (struct Scsi_Host*,int /*<<< orphan*/ *) ; 
 struct Scsi_Host* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC9 (struct Scsi_Host*) ; 

__attribute__((used)) static int
FUNC10(int index)
{
	struct Scsi_Host *sh;
	ips_ha_t *ha, *oldha = ips_ha[index];
	sh = FUNC7(&ips_driver_template, sizeof (ips_ha_t));
	if (!sh) {
		FUNC1(KERN_WARNING, oldha->pcidev,
			   "Unable to register controller with SCSI subsystem\n");
		return -1;
	}
	ha = FUNC0(sh);
	FUNC4(ha, oldha, sizeof (ips_ha_t));
	FUNC2(oldha->pcidev->irq, oldha);
	/* Install the interrupt handler with the new ha */
	if (FUNC5(ha->pcidev->irq, do_ipsintr, IRQF_SHARED, ips_name, ha)) {
		FUNC1(KERN_WARNING, ha->pcidev,
			   "Unable to install interrupt handler\n");
		goto err_out_sh;
	}

	FUNC3(oldha);

	/* Store away needed values for later use */
	sh->unique_id = (ha->io_addr) ? ha->io_addr : ha->mem_addr;
	sh->sg_tablesize = sh->hostt->sg_tablesize;
	sh->can_queue = sh->hostt->can_queue;
	sh->cmd_per_lun = sh->hostt->cmd_per_lun;
	sh->use_clustering = sh->hostt->use_clustering;
	sh->max_sectors = 128;

	sh->max_id = ha->ntargets;
	sh->max_lun = ha->nlun;
	sh->max_channel = ha->nbus - 1;
	sh->can_queue = ha->max_cmds - 1;

	if (FUNC6(sh, &ha->pcidev->dev))
		goto err_out;

	ips_sh[index] = sh;
	ips_ha[index] = ha;

	FUNC9(sh);

	return 0;

err_out:
	FUNC2(ha->pcidev->irq, ha);
err_out_sh:
	FUNC8(sh);
	return -1;
}