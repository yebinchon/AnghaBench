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
struct lpfc_vport {scalar_t__ port_type; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct Scsi_Host {TYPE_1__ shost_dev; } ;

/* Variables and functions */
 scalar_t__ LPFC_NPIV_PORT ; 
 struct Scsi_Host* FUNC0 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  sysfs_ctlreg_attr ; 
 int /*<<< orphan*/  sysfs_drvr_stat_data_attr ; 
 int /*<<< orphan*/  sysfs_mbox_attr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC2(struct lpfc_vport *vport)
{
	struct Scsi_Host *shost = FUNC0(vport);
	FUNC1(&shost->shost_dev.kobj,
		&sysfs_drvr_stat_data_attr);
	/* Virtual ports do not need ctrl_reg and mbox */
	if (vport->port_type == LPFC_NPIV_PORT)
		return;
	FUNC1(&shost->shost_dev.kobj, &sysfs_mbox_attr);
	FUNC1(&shost->shost_dev.kobj, &sysfs_ctlreg_attr);
}