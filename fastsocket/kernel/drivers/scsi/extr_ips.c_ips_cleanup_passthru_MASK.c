#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ op_code; } ;
struct TYPE_12__ {scalar_t__ op_code; } ;
struct TYPE_16__ {TYPE_4__ flashfw; TYPE_1__ dcdb; } ;
struct TYPE_17__ {int /*<<< orphan*/  scsi_cmd; TYPE_5__ cmd; int /*<<< orphan*/  extended_status; int /*<<< orphan*/  basic_status; int /*<<< orphan*/  dcdb; } ;
typedef  TYPE_6__ ips_scb_t ;
struct TYPE_13__ {int /*<<< orphan*/  dcdb; } ;
struct TYPE_18__ {int /*<<< orphan*/  AdapterType; int /*<<< orphan*/  ExtendedStatus; int /*<<< orphan*/  BasicStatus; TYPE_2__ CoppCP; } ;
typedef  TYPE_7__ ips_passthru_t ;
struct TYPE_19__ {int /*<<< orphan*/  ioctl_datasize; scalar_t__ ioctl_data; TYPE_3__* pcidev; int /*<<< orphan*/  ad_type; int /*<<< orphan*/  host_num; } ;
typedef  TYPE_8__ ips_ha_t ;
struct TYPE_14__ {scalar_t__ device; } ;
typedef  int /*<<< orphan*/  IPS_DCDB_TABLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ IPS_CMD_DCDB ; 
 scalar_t__ IPS_CMD_DOWNLOAD ; 
 scalar_t__ IPS_CMD_RW_BIOSFW ; 
 scalar_t__ IPS_DEVICEID_COPPERHEAD ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*) ; 
 int /*<<< orphan*/  ips_name ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(ips_ha_t * ha, ips_scb_t * scb)
{
	ips_passthru_t *pt;

	FUNC1("ips_cleanup_passthru", 1);

	if ((!scb) || (!scb->scsi_cmd) || (!FUNC5(scb->scsi_cmd))) {
		FUNC0(1, "(%s%d) couldn't cleanup after passthru",
			  ips_name, ha->host_num);

		return;
	}
	pt = (ips_passthru_t *) ha->ioctl_data;

	/* Copy data back to the user */
	if (scb->cmd.dcdb.op_code == IPS_CMD_DCDB)	/* Copy DCDB Back to Caller's Area */
		FUNC4(&pt->CoppCP.dcdb, &scb->dcdb, sizeof (IPS_DCDB_TABLE));

	pt->BasicStatus = scb->basic_status;
	pt->ExtendedStatus = scb->extended_status;
	pt->AdapterType = ha->ad_type;

	if (ha->pcidev->device == IPS_DEVICEID_COPPERHEAD &&
	    (scb->cmd.flashfw.op_code == IPS_CMD_DOWNLOAD ||
	     scb->cmd.flashfw.op_code == IPS_CMD_RW_BIOSFW))
		FUNC2(ha);

	FUNC3(scb->scsi_cmd, ha->ioctl_data, ha->ioctl_datasize);
}