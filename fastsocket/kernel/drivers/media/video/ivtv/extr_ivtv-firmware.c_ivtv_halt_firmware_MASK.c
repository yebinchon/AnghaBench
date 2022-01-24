#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * mbox; } ;
struct TYPE_3__ {int /*<<< orphan*/  mbox; } ;
struct ivtv {scalar_t__ has_cx23415; TYPE_2__ dec_mbox; TYPE_1__ enc_mbox; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX2341X_DEC_HALT_FW ; 
 int /*<<< orphan*/  CX2341X_ENC_HALT_FW ; 
 int /*<<< orphan*/  IVTV_CMD_AO_STOP ; 
 int /*<<< orphan*/  IVTV_CMD_APU_PING ; 
 int /*<<< orphan*/  IVTV_CMD_HW_BLOCKS_RST ; 
 int /*<<< orphan*/  IVTV_CMD_SDRAM_PRECHARGE_INIT ; 
 int /*<<< orphan*/  IVTV_CMD_SDRAM_REFRESH_INIT ; 
 int /*<<< orphan*/  IVTV_CMD_SPU_STOP ; 
 int /*<<< orphan*/  IVTV_CMD_VDM_STOP ; 
 int /*<<< orphan*/  IVTV_CMD_VPU_STOP15 ; 
 int /*<<< orphan*/  IVTV_CMD_VPU_STOP16 ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  IVTV_REG_AO ; 
 int /*<<< orphan*/  IVTV_REG_APU ; 
 int /*<<< orphan*/  IVTV_REG_DEC_SDRAM_PRECHARGE ; 
 int /*<<< orphan*/  IVTV_REG_DEC_SDRAM_REFRESH ; 
 int /*<<< orphan*/  IVTV_REG_ENC_SDRAM_PRECHARGE ; 
 int /*<<< orphan*/  IVTV_REG_ENC_SDRAM_REFRESH ; 
 int /*<<< orphan*/  IVTV_REG_HW_BLOCKS ; 
 int /*<<< orphan*/  IVTV_REG_SPU ; 
 int /*<<< orphan*/  IVTV_REG_VDM ; 
 int /*<<< orphan*/  IVTV_REG_VPU ; 
 int IVTV_SDRAM_SLEEPTIME ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ivtv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct ivtv *itv)
{
	FUNC0("Preparing for firmware halt.\n");
	if (itv->has_cx23415 && itv->dec_mbox.mbox)
		FUNC2(itv, CX2341X_DEC_HALT_FW, 0);
	if (itv->enc_mbox.mbox)
		FUNC2(itv, CX2341X_ENC_HALT_FW, 0);

	FUNC1(10, 0);
	itv->enc_mbox.mbox = *(itv->dec_mbox.mbox = NULL);

	FUNC0("Stopping VDM\n");
	FUNC3(IVTV_CMD_VDM_STOP, IVTV_REG_VDM);

	FUNC0("Stopping AO\n");
	FUNC3(IVTV_CMD_AO_STOP, IVTV_REG_AO);

	FUNC0("pinging (?) APU\n");
	FUNC3(IVTV_CMD_APU_PING, IVTV_REG_APU);

	FUNC0("Stopping VPU\n");
	if (!itv->has_cx23415)
		FUNC3(IVTV_CMD_VPU_STOP16, IVTV_REG_VPU);
	else
		FUNC3(IVTV_CMD_VPU_STOP15, IVTV_REG_VPU);

	FUNC0("Resetting Hw Blocks\n");
	FUNC3(IVTV_CMD_HW_BLOCKS_RST, IVTV_REG_HW_BLOCKS);

	FUNC0("Stopping SPU\n");
	FUNC3(IVTV_CMD_SPU_STOP, IVTV_REG_SPU);

	FUNC1(10, 0);

	FUNC0("init Encoder SDRAM pre-charge\n");
	FUNC3(IVTV_CMD_SDRAM_PRECHARGE_INIT, IVTV_REG_ENC_SDRAM_PRECHARGE);

	FUNC0("init Encoder SDRAM refresh to 1us\n");
	FUNC3(IVTV_CMD_SDRAM_REFRESH_INIT, IVTV_REG_ENC_SDRAM_REFRESH);

	if (itv->has_cx23415) {
		FUNC0("init Decoder SDRAM pre-charge\n");
		FUNC3(IVTV_CMD_SDRAM_PRECHARGE_INIT, IVTV_REG_DEC_SDRAM_PRECHARGE);

		FUNC0("init Decoder SDRAM refresh to 1us\n");
		FUNC3(IVTV_CMD_SDRAM_REFRESH_INIT, IVTV_REG_DEC_SDRAM_REFRESH);
	}

	FUNC0("Sleeping for %dms\n", IVTV_SDRAM_SLEEPTIME);
	FUNC1(IVTV_SDRAM_SLEEPTIME, 0);
}