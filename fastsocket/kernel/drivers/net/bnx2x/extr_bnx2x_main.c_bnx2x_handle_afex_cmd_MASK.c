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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_3__ {int rate; int quota; } ;
struct rate_shaping_vars_per_vn {TYPE_1__ vn_counter; } ;
struct cmng_init_input {int* vnic_max_rate; } ;
struct bnx2x {int* mf_config; int afex_def_vlan_tag; int afex_vlan_mode; } ;
struct afex_stats {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  afex_config; int /*<<< orphan*/  e1hov_tag; int /*<<< orphan*/  config; } ;

/* Variables and functions */
 int BAR_XSTRORM_INTMEM ; 
 int /*<<< orphan*/  BNX2X_MSG_MCP ; 
 int FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 size_t FUNC2 (struct bnx2x*) ; 
 size_t FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  DRV_MSG_CODE_AFEX_STATSGET_ACK ; 
 int DRV_STATUS_AFEX_LISTGET_REQ ; 
 int DRV_STATUS_AFEX_LISTSET_REQ ; 
 int DRV_STATUS_AFEX_STATSGET_REQ ; 
 int DRV_STATUS_AFEX_VIFSET_REQ ; 
 int FUNC_MF_CFG_AFEX_COS_FILTER_MASK ; 
 int FUNC_MF_CFG_AFEX_COS_FILTER_SHIFT ; 
 int FUNC_MF_CFG_AFEX_VLAN_MASK ; 
 int FUNC_MF_CFG_AFEX_VLAN_MODE_MASK ; 
 int FUNC_MF_CFG_AFEX_VLAN_MODE_SHIFT ; 
 int FUNC_MF_CFG_AFEX_VLAN_SHIFT ; 
 int FUNC_MF_CFG_E1HOV_TAG_MASK ; 
 int FUNC_MF_CFG_E1HOV_TAG_SHIFT ; 
 int FUNC_MF_CFG_FUNC_DISABLED ; 
 int FUNC_MF_CFG_TRANSMIT_PRIORITY_MASK ; 
 int FUNC_MF_CFG_TRANSMIT_PRIORITY_SHIFT ; 
 int FUNC5 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,int,int) ; 
 int RS_PERIODIC_TIMEOUT_USEC ; 
 int FUNC7 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIF_LIST_RULE_GET ; 
 int /*<<< orphan*/  VIF_LIST_RULE_SET ; 
 int VLAN_PRIO_SHIFT ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct bnx2x*,int,size_t,int*) ; 
 int /*<<< orphan*/ * afex_param1_to_driver ; 
 int /*<<< orphan*/ * afex_param2_to_driver ; 
 int /*<<< orphan*/ * afex_scratchpad_addr_to_write ; 
 int /*<<< orphan*/  FUNC10 (struct bnx2x*,void*,int) ; 
 scalar_t__ FUNC11 (struct bnx2x*,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct bnx2x*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct bnx2x*,size_t,struct cmng_init_input*) ; 
 int /*<<< orphan*/  FUNC14 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct bnx2x*) ; 
 TYPE_2__* func_mf_config ; 

__attribute__((used)) static void FUNC16(struct bnx2x *bp, u32 cmd)
{
	struct afex_stats afex_stats;
	u32 func = FUNC0(bp);
	u32 mf_config;
	u16 vlan_val;
	u32 vlan_prio;
	u16 vif_id;
	u8 allowed_prio;
	u8 vlan_mode;
	u32 addr_to_write, vifid, addrs, stats_type, i;

	if (cmd & DRV_STATUS_AFEX_LISTGET_REQ) {
		vifid = FUNC7(bp, afex_param1_to_driver[FUNC2(bp)]);
		FUNC4(BNX2X_MSG_MCP,
		   "afex: got MCP req LISTGET_REQ for vifid 0x%x\n", vifid);
		FUNC12(bp, VIF_LIST_RULE_GET, vifid, 0);
	}

	if (cmd & DRV_STATUS_AFEX_LISTSET_REQ) {
		vifid = FUNC7(bp, afex_param1_to_driver[FUNC2(bp)]);
		addrs = FUNC7(bp, afex_param2_to_driver[FUNC2(bp)]);
		FUNC4(BNX2X_MSG_MCP,
		   "afex: got MCP req LISTSET_REQ for vifid 0x%x addrs 0x%x\n",
		   vifid, addrs);
		FUNC12(bp, VIF_LIST_RULE_SET, vifid,
					       addrs);
	}

	if (cmd & DRV_STATUS_AFEX_STATSGET_REQ) {
		addr_to_write = FUNC7(bp,
			afex_scratchpad_addr_to_write[FUNC2(bp)]);
		stats_type = FUNC7(bp,
			afex_param1_to_driver[FUNC2(bp)]);

		FUNC4(BNX2X_MSG_MCP,
		   "afex: got MCP req STATSGET_REQ, write to addr 0x%x\n",
		   addr_to_write);

		FUNC10(bp, (void *)&afex_stats, stats_type);

		/* write response to scratchpad, for MCP */
		for (i = 0; i < (sizeof(struct afex_stats)/sizeof(u32)); i++)
			FUNC6(bp, addr_to_write + i*sizeof(u32),
			       *(((u32 *)(&afex_stats))+i));

		/* send ack message to MCP */
		FUNC14(bp, DRV_MSG_CODE_AFEX_STATSGET_ACK, 0);
	}

	if (cmd & DRV_STATUS_AFEX_VIFSET_REQ) {
		mf_config = FUNC5(bp, func_mf_config[func].config);
		bp->mf_config[FUNC3(bp)] = mf_config;
		FUNC4(BNX2X_MSG_MCP,
		   "afex: got MCP req VIFSET_REQ, mf_config 0x%x\n",
		   mf_config);

		/* if VIF_SET is "enabled" */
		if (!(mf_config & FUNC_MF_CFG_FUNC_DISABLED)) {
			/* set rate limit directly to internal RAM */
			struct cmng_init_input cmng_input;
			struct rate_shaping_vars_per_vn m_rs_vn;
			size_t size = sizeof(struct rate_shaping_vars_per_vn);
			u32 addr = BAR_XSTRORM_INTMEM +
			    FUNC8(FUNC1(bp));

			bp->mf_config[FUNC3(bp)] = mf_config;

			FUNC13(bp, FUNC3(bp), &cmng_input);
			m_rs_vn.vn_counter.rate =
				cmng_input.vnic_max_rate[FUNC3(bp)];
			m_rs_vn.vn_counter.quota =
				(m_rs_vn.vn_counter.rate *
				 RS_PERIODIC_TIMEOUT_USEC) / 8;

			FUNC9(bp, addr, size, (u32 *)&m_rs_vn);

			/* read relevant values from mf_cfg struct in shmem */
			vif_id =
				(FUNC5(bp, func_mf_config[func].e1hov_tag) &
				 FUNC_MF_CFG_E1HOV_TAG_MASK) >>
				FUNC_MF_CFG_E1HOV_TAG_SHIFT;
			vlan_val =
				(FUNC5(bp, func_mf_config[func].e1hov_tag) &
				 FUNC_MF_CFG_AFEX_VLAN_MASK) >>
				FUNC_MF_CFG_AFEX_VLAN_SHIFT;
			vlan_prio = (mf_config &
				     FUNC_MF_CFG_TRANSMIT_PRIORITY_MASK) >>
				    FUNC_MF_CFG_TRANSMIT_PRIORITY_SHIFT;
			vlan_val |= (vlan_prio << VLAN_PRIO_SHIFT);
			vlan_mode =
				(FUNC5(bp,
					   func_mf_config[func].afex_config) &
				 FUNC_MF_CFG_AFEX_VLAN_MODE_MASK) >>
				FUNC_MF_CFG_AFEX_VLAN_MODE_SHIFT;
			allowed_prio =
				(FUNC5(bp,
					   func_mf_config[func].afex_config) &
				 FUNC_MF_CFG_AFEX_COS_FILTER_MASK) >>
				FUNC_MF_CFG_AFEX_COS_FILTER_SHIFT;

			/* send ramrod to FW, return in case of failure */
			if (FUNC11(bp, vif_id, vlan_val,
						   allowed_prio))
				return;

			bp->afex_def_vlan_tag = vlan_val;
			bp->afex_vlan_mode = vlan_mode;
		} else {
			/* notify link down because BP->flags is disabled */
			FUNC15(bp);

			/* send INVALID VIF ramrod to FW */
			FUNC11(bp, 0xFFFF, 0, 0);

			/* Reset the default afex VLAN */
			bp->afex_def_vlan_tag = -1;
		}
	}
}