#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct ilt_client_info {int client_num; scalar_t__ end; scalar_t__ start; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bnx2x*) ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
#define  ILT_CLIENT_CDU 131 
#define  ILT_CLIENT_QM 130 
#define  ILT_CLIENT_SRC 129 
#define  ILT_CLIENT_TM 128 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ PXP2_REG_PSWRQ_CDU0_L2P ; 
 scalar_t__ PXP2_REG_PSWRQ_QM0_L2P ; 
 scalar_t__ PXP2_REG_PSWRQ_SRC0_L2P ; 
 scalar_t__ PXP2_REG_PSWRQ_TM0_L2P ; 
 scalar_t__ PXP2_REG_RQ_CDU_FIRST_ILT ; 
 scalar_t__ PXP2_REG_RQ_CDU_LAST_ILT ; 
 scalar_t__ PXP2_REG_RQ_QM_FIRST_ILT ; 
 scalar_t__ PXP2_REG_RQ_QM_LAST_ILT ; 
 scalar_t__ PXP2_REG_RQ_SRC_FIRST_ILT ; 
 scalar_t__ PXP2_REG_RQ_SRC_LAST_ILT ; 
 scalar_t__ PXP2_REG_RQ_TM_FIRST_ILT ; 
 scalar_t__ PXP2_REG_RQ_TM_LAST_ILT ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct bnx2x *bp,
				      struct ilt_client_info *ilt_cli,
				      u32 ilt_start, u8 initop)
{
	u32 start_reg = 0;
	u32 end_reg = 0;

	/* The boundary is either SET or INIT,
	   CLEAR => SET and for now SET ~~ INIT */

	/* find the appropriate regs */
	if (FUNC1(bp)) {
		switch (ilt_cli->client_num) {
		case ILT_CLIENT_CDU:
			start_reg = PXP2_REG_PSWRQ_CDU0_L2P;
			break;
		case ILT_CLIENT_QM:
			start_reg = PXP2_REG_PSWRQ_QM0_L2P;
			break;
		case ILT_CLIENT_SRC:
			start_reg = PXP2_REG_PSWRQ_SRC0_L2P;
			break;
		case ILT_CLIENT_TM:
			start_reg = PXP2_REG_PSWRQ_TM0_L2P;
			break;
		}
		FUNC3(bp, start_reg + FUNC0(bp)*4,
		       FUNC2((ilt_start + ilt_cli->start),
				 (ilt_start + ilt_cli->end)));
	} else {
		switch (ilt_cli->client_num) {
		case ILT_CLIENT_CDU:
			start_reg = PXP2_REG_RQ_CDU_FIRST_ILT;
			end_reg = PXP2_REG_RQ_CDU_LAST_ILT;
			break;
		case ILT_CLIENT_QM:
			start_reg = PXP2_REG_RQ_QM_FIRST_ILT;
			end_reg = PXP2_REG_RQ_QM_LAST_ILT;
			break;
		case ILT_CLIENT_SRC:
			start_reg = PXP2_REG_RQ_SRC_FIRST_ILT;
			end_reg = PXP2_REG_RQ_SRC_LAST_ILT;
			break;
		case ILT_CLIENT_TM:
			start_reg = PXP2_REG_RQ_TM_FIRST_ILT;
			end_reg = PXP2_REG_RQ_TM_LAST_ILT;
			break;
		}
		FUNC3(bp, start_reg, (ilt_start + ilt_cli->start));
		FUNC3(bp, end_reg, (ilt_start + ilt_cli->end));
	}
}