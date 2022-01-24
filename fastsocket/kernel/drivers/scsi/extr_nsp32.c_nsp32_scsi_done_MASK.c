#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;TYPE_3__* device; } ;
struct TYPE_8__ {int /*<<< orphan*/ * CurrentSC; int /*<<< orphan*/ * cur_target; TYPE_1__* cur_lunt; } ;
typedef  TYPE_4__ nsp32_hw_data ;
struct TYPE_7__ {TYPE_2__* host; } ;
struct TYPE_6__ {unsigned int io_port; scalar_t__ hostdata; } ;
struct TYPE_5__ {int /*<<< orphan*/ * SCpnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  BM_CNT ; 
 int /*<<< orphan*/  TRANSFER_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC4(struct scsi_cmnd *SCpnt)
{
	nsp32_hw_data *data = (nsp32_hw_data *)SCpnt->device->host->hostdata;
	unsigned int   base = SCpnt->device->host->io_port;

	FUNC2(SCpnt);

	/*
	 * clear TRANSFERCONTROL_BM_START
	 */
	FUNC0(base, TRANSFER_CONTROL, 0);
	FUNC1(base, BM_CNT,           0);

	/*
	 * call scsi_done
	 */
	(*SCpnt->scsi_done)(SCpnt);

	/*
	 * reset parameters
	 */
	data->cur_lunt->SCpnt = NULL;
	data->cur_lunt        = NULL;
	data->cur_target      = NULL;
	data->CurrentSC      = NULL;
}