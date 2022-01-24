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
typedef  union vfpf_tlvs {int dummy; } vfpf_tlvs ;
typedef  int /*<<< orphan*/  u8 ;
struct vf_pf_event_data {scalar_t__ vf_id; scalar_t__ msg_addr_hi; scalar_t__ msg_addr_lo; } ;
struct bnx2x_virtf {scalar_t__ abs_vfid; } ;
struct TYPE_7__ {scalar_t__ resp_msg_offset; } ;
struct bnx2x_vf_mbx {int flags; scalar_t__ vf_addr_hi; scalar_t__ vf_addr_lo; TYPE_4__* msg; TYPE_2__ first_tlv; int /*<<< orphan*/  msg_mapping; } ;
struct bnx2x {int dummy; } ;
struct TYPE_6__ {scalar_t__ first_vf_in_pf; } ;
struct TYPE_10__ {TYPE_1__ sriov; } ;
struct TYPE_8__ {TYPE_2__ first_tlv; } ;
struct TYPE_9__ {TYPE_3__ req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 struct bnx2x_virtf* FUNC2 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC3 (struct bnx2x*) ; 
 struct bnx2x_vf_mbx* FUNC4 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int VF_MSG_INPROCESS ; 
 int FUNC6 (struct bnx2x*,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vf_mbx*) ; 
 int /*<<< orphan*/  FUNC9 (struct bnx2x*,struct bnx2x_virtf*,int) ; 

void FUNC10(struct bnx2x *bp, struct vf_pf_event_data *vfpf_event)
{
	struct bnx2x_virtf *vf;
	struct bnx2x_vf_mbx *mbx;
	u8 vf_idx;
	int rc;

	FUNC5(BNX2X_MSG_IOV,
	   "vf pf event received: vfid %d, address_hi %x, address lo %x",
	   vfpf_event->vf_id, vfpf_event->msg_addr_hi, vfpf_event->msg_addr_lo);
	/* Sanity checks consider removing later */

	/* check if the vf_id is valid */
	if (vfpf_event->vf_id - FUNC3(bp)->sriov.first_vf_in_pf >
	    FUNC1(bp)) {
		FUNC0("Illegal vf_id %d max allowed: %d\n",
			  vfpf_event->vf_id, FUNC1(bp));
		goto mbx_done;
	}
	vf_idx = FUNC7(bp, vfpf_event->vf_id);
	mbx = FUNC4(bp, vf_idx);

	/* verify an event is not currently being processed -
	 * debug failsafe only
	 */
	if (mbx->flags & VF_MSG_INPROCESS) {
		FUNC0("Previous message is still being processed, vf_id %d\n",
			  vfpf_event->vf_id);
		goto mbx_done;
	}
	vf = FUNC2(bp, vf_idx);

	/* save the VF message address */
	mbx->vf_addr_hi = vfpf_event->msg_addr_hi;
	mbx->vf_addr_lo = vfpf_event->msg_addr_lo;
	FUNC5(BNX2X_MSG_IOV, "mailbox vf address hi 0x%x, lo 0x%x, offset 0x%x\n",
	   mbx->vf_addr_hi, mbx->vf_addr_lo, mbx->first_tlv.resp_msg_offset);

	/* dmae to get the VF request */
	rc = FUNC6(bp, true, mbx->msg_mapping, vf->abs_vfid,
				  mbx->vf_addr_hi, mbx->vf_addr_lo,
				  sizeof(union vfpf_tlvs)/4);
	if (rc) {
		FUNC0("Failed to copy request VF %d\n", vf->abs_vfid);
		goto mbx_error;
	}

	/* process the VF message header */
	mbx->first_tlv = mbx->msg->req.first_tlv;

	/* dispatch the request (will prepare the response) */
	FUNC8(bp, vf, mbx);
	goto mbx_done;

mbx_error:
	FUNC9(bp, vf, false); /* non blocking */
mbx_done:
	return;
}