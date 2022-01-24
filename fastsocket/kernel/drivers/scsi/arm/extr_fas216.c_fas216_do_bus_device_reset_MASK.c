#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {TYPE_3__* device; int /*<<< orphan*/  SCp; } ;
struct message {int fifo; } ;
struct TYPE_15__ {int /*<<< orphan*/  msgs; int /*<<< orphan*/  SCp; int /*<<< orphan*/  phase; } ;
struct TYPE_13__ {int /*<<< orphan*/  select_timeout; } ;
struct TYPE_12__ {int /*<<< orphan*/  transfer_type; } ;
struct TYPE_16__ {TYPE_4__ scsi; TYPE_2__ ifcfg; TYPE_1__ dma; struct scsi_cmnd* SCpnt; } ;
struct TYPE_14__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_5__ FAS216_Info ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUS_DEVICE_RESET ; 
 int CMD_FLUSHFIFO ; 
 int CMD_NOP ; 
 int CMD_SELECTATNSTOP ; 
 int CMD_WITHDMA ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  PHASE_SELECTION ; 
 int /*<<< orphan*/  REG_FF ; 
 int /*<<< orphan*/  REG_SDID ; 
 int /*<<< orphan*/  REG_STIM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fasdma_none ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct message* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(FAS216_Info *info,
				       struct scsi_cmnd *SCpnt)
{
	struct message *msg;

	/*
	 * claim host busy
	 */
	info->scsi.phase = PHASE_SELECTION;
	info->scsi.SCp = SCpnt->SCp;
	info->SCpnt = SCpnt;
	info->dma.transfer_type = fasdma_none;

	FUNC2(info, LOG_ERROR, "sending bus device reset");

	FUNC7(&info->scsi.msgs);
	FUNC6(&info->scsi.msgs, 1, BUS_DEVICE_RESET);

	/* following what the ESP driver says */
	FUNC3(info, 0);
	FUNC1(info, CMD_NOP | CMD_WITHDMA);

	/* flush FIFO */
	FUNC1(info, CMD_FLUSHFIFO);

	/* load bus-id and timeout */
	FUNC5(info, REG_SDID, FUNC0(SCpnt->device->id));
	FUNC5(info, REG_STIM, info->ifcfg.select_timeout);

	/* synchronous transfers */
	FUNC4(info, SCpnt->device->id);

	msg = FUNC8(&info->scsi.msgs, 0);

	FUNC5(info, REG_FF, BUS_DEVICE_RESET);
	msg->fifo = 1;

	FUNC1(info, CMD_SELECTATNSTOP);
}