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
typedef  int /*<<< orphan*/  u8 ;
struct bnx2x_virtf {int /*<<< orphan*/  leading_rss; int /*<<< orphan*/  filter_state; int /*<<< orphan*/  mcast_obj; int /*<<< orphan*/  abs_vfid; } ;
struct TYPE_2__ {int /*<<< orphan*/  func_id; } ;
struct bnx2x_vf_queue {int /*<<< orphan*/  cid; int /*<<< orphan*/  vlan_obj; int /*<<< orphan*/  mac_obj; TYPE_1__ sp_obj; } ;
struct bnx2x {int /*<<< orphan*/  vlans_pool; int /*<<< orphan*/  macs_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_FILTER_MAC_PENDING ; 
 int /*<<< orphan*/  BNX2X_FILTER_MCAST_PENDING ; 
 int /*<<< orphan*/  BNX2X_FILTER_VLAN_PENDING ; 
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
 int /*<<< orphan*/  BNX2X_OBJ_TYPE_RX_TX ; 
 int /*<<< orphan*/  BNX2X_Q_TYPE_HAS_RX ; 
 int /*<<< orphan*/  BNX2X_Q_TYPE_HAS_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,struct bnx2x_virtf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*,struct bnx2x_virtf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mac_rdata ; 
 int /*<<< orphan*/  mcast_rdata ; 
 int /*<<< orphan*/  q_data ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC9 (struct bnx2x_virtf*,struct bnx2x_vf_queue*) ; 
 scalar_t__ FUNC10 (struct bnx2x_vf_queue*) ; 
 int /*<<< orphan*/  vlan_rdata ; 

__attribute__((used)) static void FUNC11(struct bnx2x *bp, struct bnx2x_virtf *vf,
			   struct bnx2x_vf_queue *q)
{
	u8 cl_id = FUNC9(vf, q);
	u8 func_id = FUNC1(vf->abs_vfid);
	unsigned long q_type = 0;

	FUNC8(BNX2X_Q_TYPE_HAS_TX, &q_type);
	FUNC8(BNX2X_Q_TYPE_HAS_RX, &q_type);

	/* Queue State object */
	FUNC4(bp, &q->sp_obj,
			     cl_id, &q->cid, 1, func_id,
			     FUNC6(bp, vf, q_data),
			     FUNC7(bp, vf, q_data),
			     q_type);

	FUNC0(BNX2X_MSG_IOV,
	   "initialized vf %d's queue object. func id set to %d\n",
	   vf->abs_vfid, q->sp_obj.func_id);

	/* mac/vlan objects are per queue, but only those
	 * that belong to the leading queue are initialized
	 */
	if (FUNC10(q)) {
		/* mac */
		FUNC2(bp, &q->mac_obj,
				   cl_id, q->cid, func_id,
				   FUNC6(bp, vf, mac_rdata),
				   FUNC7(bp, vf, mac_rdata),
				   BNX2X_FILTER_MAC_PENDING,
				   &vf->filter_state,
				   BNX2X_OBJ_TYPE_RX_TX,
				   &bp->macs_pool);
		/* vlan */
		FUNC5(bp, &q->vlan_obj,
				    cl_id, q->cid, func_id,
				    FUNC6(bp, vf, vlan_rdata),
				    FUNC7(bp, vf, vlan_rdata),
				    BNX2X_FILTER_VLAN_PENDING,
				    &vf->filter_state,
				    BNX2X_OBJ_TYPE_RX_TX,
				    &bp->vlans_pool);

		/* mcast */
		FUNC3(bp, &vf->mcast_obj, cl_id,
				     q->cid, func_id, func_id,
				     FUNC6(bp, vf, mcast_rdata),
				     FUNC7(bp, vf, mcast_rdata),
				     BNX2X_FILTER_MCAST_PENDING,
				     &vf->filter_state,
				     BNX2X_OBJ_TYPE_RX_TX);

		vf->leading_rss = cl_id;
	}
}