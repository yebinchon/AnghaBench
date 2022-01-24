#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {TYPE_2__* device; } ;
struct TYPE_10__ {unsigned int BaseAddress; int trans_method; TYPE_4__* cur_lunt; TYPE_3__* cur_target; } ;
typedef  TYPE_5__ nsp32_hw_data ;
struct TYPE_9__ {int /*<<< orphan*/  sglun_paddr; } ;
struct TYPE_8__ {int /*<<< orphan*/  sample_reg; int /*<<< orphan*/  ackwidth; int /*<<< orphan*/  syncreg; } ;
struct TYPE_7__ {TYPE_1__* host; } ;
struct TYPE_6__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACK_WIDTH ; 
 unsigned short ALL_COUNTER_CLR ; 
 unsigned short AUTOSCSI_RESTART ; 
 unsigned short AUTO_COMMAND_PHASE ; 
 unsigned short BM_START ; 
 unsigned short CB_IO_MODE ; 
 unsigned short CB_MMIO_MODE ; 
 unsigned short CLEAR_CDB_FIFO_POINTER ; 
 int /*<<< orphan*/  COMMAND_CONTROL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  NSP32_DEBUG_RESTART ; 
 int NSP32_TRANSFER_BUSMASTER ; 
 int NSP32_TRANSFER_MMIO ; 
 int NSP32_TRANSFER_PIO ; 
 int /*<<< orphan*/  SGT_ADR ; 
 int /*<<< orphan*/  SREQ_SMPL_RATE ; 
 int /*<<< orphan*/  SYNC_REG ; 
 int /*<<< orphan*/  TRANSFER_CONTROL ; 
 unsigned short TRANSFER_GO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC6(struct scsi_cmnd *SCpnt, unsigned short command)
{
	nsp32_hw_data *data = (nsp32_hw_data *)SCpnt->device->host->hostdata;
	unsigned int   base = data->BaseAddress;
	unsigned short transfer = 0;

	FUNC0(NSP32_DEBUG_RESTART, "enter");

	if (data->cur_target == NULL || data->cur_lunt == NULL) {
		FUNC1(KERN_ERR, "Target or Lun is invalid");
	}

	/*
	 * set SYNC_REG
	 * Don't set BM_START_ADR before setting this register.
	 */
	FUNC2(base, SYNC_REG, data->cur_target->syncreg);

	/*
	 * set ACKWIDTH
	 */
	FUNC2(base, ACK_WIDTH, data->cur_target->ackwidth);

	/*
	 * set SREQ hazard killer sampling rate
	 */
	FUNC2(base, SREQ_SMPL_RATE, data->cur_target->sample_reg);

	/*
	 * set SGT ADDR (physical address)
	 */
	FUNC4(base, SGT_ADR, data->cur_lunt->sglun_paddr);

	/*
	 * set TRANSFER CONTROL REG
	 */
	transfer = 0;
	transfer |= (TRANSFER_GO | ALL_COUNTER_CLR);
	if (data->trans_method & NSP32_TRANSFER_BUSMASTER) {
		if (FUNC5(SCpnt) > 0) {
			transfer |= BM_START;
		}
	} else if (data->trans_method & NSP32_TRANSFER_MMIO) {
		transfer |= CB_MMIO_MODE;
	} else if (data->trans_method & NSP32_TRANSFER_PIO) {
		transfer |= CB_IO_MODE;
	}
	FUNC3(base, TRANSFER_CONTROL, transfer);

	/*
	 * restart AutoSCSI
	 *
	 * TODO: COMMANDCONTROL_AUTO_COMMAND_PHASE is needed ?
	 */
	command |= (CLEAR_CDB_FIFO_POINTER |
		    AUTO_COMMAND_PHASE     |
		    AUTOSCSI_RESTART       );
	FUNC3(base, COMMAND_CONTROL, command);

	FUNC0(NSP32_DEBUG_RESTART, "exit");
}