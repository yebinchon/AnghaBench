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
struct bnx2x_rx_mode_ramrod_params {unsigned long rx_accept_flags; unsigned long tx_accept_flags; int /*<<< orphan*/  rdata_mapping; int /*<<< orphan*/  rdata; int /*<<< orphan*/  ramrod_flags; int /*<<< orphan*/  state; int /*<<< orphan*/ * pstate; int /*<<< orphan*/  func_id; int /*<<< orphan*/ * rx_mode_obj; int /*<<< orphan*/  cl_id; int /*<<< orphan*/  cid; } ;
struct TYPE_3__ {struct bnx2x_rx_mode_ramrod_params rx_mode; } ;
struct bnx2x_virtf {int /*<<< orphan*/  filter_state; int /*<<< orphan*/  abs_vfid; TYPE_1__ op_params; } ;
struct bnx2x_vfop_cmd {int /*<<< orphan*/  block; int /*<<< orphan*/  done; } ;
struct bnx2x_vfop {int dummy; } ;
struct bnx2x_vf_queue {int /*<<< orphan*/  cid; } ;
struct bnx2x {int /*<<< orphan*/  rx_mode_obj; } ;
struct TYPE_4__ {int /*<<< orphan*/  e2; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_FILTER_RX_MODE_PENDING ; 
 int /*<<< orphan*/  BNX2X_VFOP_RXMODE_CONFIG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RAMROD_RX ; 
 int /*<<< orphan*/  RAMROD_TX ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,struct bnx2x_virtf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct bnx2x_virtf*,int /*<<< orphan*/ ) ; 
 struct bnx2x_vfop* FUNC3 (struct bnx2x*,struct bnx2x_virtf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bnx2x_vfop_rxmode ; 
 int FUNC5 (struct bnx2x*,struct bnx2x_virtf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x_rx_mode_ramrod_params*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__ rx_mode_rdata ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x_virtf*,struct bnx2x_vf_queue*) ; 
 struct bnx2x_vf_queue* FUNC9 (struct bnx2x_virtf*,int) ; 

int FUNC10(struct bnx2x *bp,
			  struct bnx2x_virtf *vf,
			  struct bnx2x_vfop_cmd *cmd,
			  int qid, unsigned long accept_flags)
{
	struct bnx2x_vf_queue *vfq = FUNC9(vf, qid);
	struct bnx2x_vfop *vfop = FUNC3(bp, vf);

	if (vfop) {
		struct bnx2x_rx_mode_ramrod_params *ramrod =
			&vf->op_params.rx_mode;

		FUNC6(ramrod, 0, sizeof(*ramrod));

		/* Prepare ramrod parameters */
		ramrod->cid = vfq->cid;
		ramrod->cl_id = FUNC8(vf, vfq);
		ramrod->rx_mode_obj = &bp->rx_mode_obj;
		ramrod->func_id = FUNC0(vf->abs_vfid);

		ramrod->rx_accept_flags = accept_flags;
		ramrod->tx_accept_flags = accept_flags;
		ramrod->pstate = &vf->filter_state;
		ramrod->state = BNX2X_FILTER_RX_MODE_PENDING;

		FUNC7(BNX2X_FILTER_RX_MODE_PENDING, &vf->filter_state);
		FUNC7(RAMROD_RX, &ramrod->ramrod_flags);
		FUNC7(RAMROD_TX, &ramrod->ramrod_flags);

		ramrod->rdata =
			FUNC1(bp, vf, rx_mode_rdata.e2);
		ramrod->rdata_mapping =
			FUNC2(bp, vf, rx_mode_rdata.e2);

		FUNC4(BNX2X_VFOP_RXMODE_CONFIG,
				 bnx2x_vfop_rxmode, cmd->done);
		return FUNC5(bp, vf, bnx2x_vfop_rxmode,
					     cmd->block);
	}
	return -ENOMEM;
}