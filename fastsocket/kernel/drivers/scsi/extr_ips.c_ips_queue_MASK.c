#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_12__ ;
typedef  struct TYPE_15__   TYPE_11__ ;

/* Type definitions */
struct scsi_cmnd {int result; void (* scsi_done ) (struct scsi_cmnd*) ;TYPE_2__* device; int /*<<< orphan*/ * cmnd; } ;
struct TYPE_19__ {scalar_t__ op_code; int adapter_flag; } ;
struct TYPE_20__ {TYPE_3__ reset; } ;
struct TYPE_21__ {TYPE_4__ cmd; } ;
struct TYPE_23__ {TYPE_5__ CoppCP; } ;
typedef  TYPE_7__ ips_passthru_t ;
struct TYPE_15__ {scalar_t__ count; } ;
struct TYPE_16__ {scalar_t__ count; } ;
struct TYPE_22__ {scalar_t__ count; } ;
struct TYPE_24__ {scalar_t__* ha_id; int ioctl_reset; TYPE_11__ scb_waitlist; TYPE_12__ copp_waitlist; TYPE_6__ scb_activelist; int /*<<< orphan*/  host_num; int /*<<< orphan*/  active; } ;
typedef  TYPE_8__ ips_ha_t ;
struct TYPE_25__ {int /*<<< orphan*/ * next; struct scsi_cmnd* scsi_cmd; } ;
typedef  TYPE_9__ ips_copp_wait_item_t ;
struct TYPE_18__ {int /*<<< orphan*/  lun; int /*<<< orphan*/  id; int /*<<< orphan*/  channel; TYPE_1__* host; } ;
struct TYPE_17__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int DID_BUS_BUSY ; 
 int DID_ERROR ; 
 int DID_NO_CONNECT ; 
 int DID_OK ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ IPS_CMD_RESET_CHANNEL ; 
 int /*<<< orphan*/  IPS_INTR_IORL ; 
 scalar_t__ IPS_MAX_IOCTL_QUEUE ; 
 scalar_t__ IPS_MAX_QUEUE ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC3 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  ips_name ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_12__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_11__*,struct scsi_cmnd*) ; 
 TYPE_9__* FUNC7 (int,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC9 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC10 (struct scsi_cmnd*) ; 
 void FUNC11 (struct scsi_cmnd*) ; 

__attribute__((used)) static int FUNC12(struct scsi_cmnd *SC, void (*done) (struct scsi_cmnd *))
{
	ips_ha_t *ha;
	ips_passthru_t *pt;

	FUNC1("ips_queue", 1);

	ha = (ips_ha_t *) SC->device->host->hostdata;

	if (!ha)
		return (1);

	if (!ha->active)
		return (DID_ERROR);

	if (FUNC3(SC)) {
		if (ha->copp_waitlist.count == IPS_MAX_IOCTL_QUEUE) {
			SC->result = DID_BUS_BUSY << 16;
			done(SC);

			return (0);
		}
	} else if (ha->scb_waitlist.count == IPS_MAX_QUEUE) {
		SC->result = DID_BUS_BUSY << 16;
		done(SC);

		return (0);
	}

	SC->scsi_done = done;

	FUNC0(2, "(%s%d): ips_queue: cmd 0x%X (%d %d %d)",
		  ips_name,
		  ha->host_num,
		  SC->cmnd[0],
		  SC->device->channel, SC->device->id, SC->device->lun);

	/* Check for command to initiator IDs */
	if ((FUNC8(SC) > 0)
	    && (FUNC9(SC) == ha->ha_id[FUNC8(SC)])) {
		SC->result = DID_NO_CONNECT << 16;
		done(SC);

		return (0);
	}

	if (FUNC3(SC)) {

		ips_copp_wait_item_t *scratch;

		/* A Reset IOCTL is only sent by the boot CD in extreme cases.           */
		/* There can never be any system activity ( network or disk ), but check */
		/* anyway just as a good practice.                                       */
		pt = (ips_passthru_t *) FUNC10(SC);
		if ((pt->CoppCP.cmd.reset.op_code == IPS_CMD_RESET_CHANNEL) &&
		    (pt->CoppCP.cmd.reset.adapter_flag == 1)) {
			if (ha->scb_activelist.count != 0) {
				SC->result = DID_BUS_BUSY << 16;
				done(SC);
				return (0);
			}
			ha->ioctl_reset = 1;	/* This reset request is from an IOCTL */
			FUNC2(SC);
			SC->result = DID_OK << 16;
			SC->scsi_done(SC);
			return (0);
		}

		/* allocate space for the scribble */
		scratch = FUNC7(sizeof (ips_copp_wait_item_t), GFP_ATOMIC);

		if (!scratch) {
			SC->result = DID_ERROR << 16;
			done(SC);

			return (0);
		}

		scratch->scsi_cmd = SC;
		scratch->next = NULL;

		FUNC5(&ha->copp_waitlist, scratch);
	} else {
		FUNC6(&ha->scb_waitlist, SC);
	}

	FUNC4(ha, IPS_INTR_IORL);

	return (0);
}