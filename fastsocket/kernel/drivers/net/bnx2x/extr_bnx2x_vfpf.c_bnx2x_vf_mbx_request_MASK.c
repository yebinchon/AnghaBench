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
struct bnx2x_virtf {scalar_t__ state; int /*<<< orphan*/  abs_vfid; int /*<<< orphan*/  op_rc; } ;
struct TYPE_9__ {int type; int /*<<< orphan*/  length; } ;
struct TYPE_10__ {TYPE_4__ tl; } ;
struct bnx2x_vf_mbx {TYPE_5__ first_tlv; TYPE_3__* msg; } ;
struct bnx2x {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/ * tlv_buffer; } ;
struct TYPE_7__ {TYPE_1__ tlv_buf_size; } ;
struct TYPE_8__ {TYPE_2__ req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
#define  CHANNEL_TLV_ACQUIRE 134 
#define  CHANNEL_TLV_CLOSE 133 
#define  CHANNEL_TLV_INIT 132 
#define  CHANNEL_TLV_RELEASE 131 
#define  CHANNEL_TLV_SETUP_Q 130 
#define  CHANNEL_TLV_SET_Q_FILTERS 129 
#define  CHANNEL_TLV_TEARDOWN_Q 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PFVF_STATUS_NOT_SUPPORTED ; 
 scalar_t__ VF_ACQUIRED ; 
 scalar_t__ VF_ENABLED ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct bnx2x_virtf*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,struct bnx2x_virtf*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vf_mbx*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vf_mbx*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vf_mbx*) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vf_mbx*) ; 
 int /*<<< orphan*/  FUNC9 (struct bnx2x*,struct bnx2x_virtf*) ; 
 int /*<<< orphan*/  FUNC10 (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vf_mbx*) ; 
 int /*<<< orphan*/  FUNC11 (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vf_mbx*) ; 
 int /*<<< orphan*/  FUNC12 (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vf_mbx*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct bnx2x*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct bnx2x *bp, struct bnx2x_virtf *vf,
				  struct bnx2x_vf_mbx *mbx)
{
	int i;

	/* check if tlv type is known */
	if (FUNC3(mbx->first_tlv.tl.type)) {
		/* Lock the per vf op mutex and note the locker's identity.
		 * The unlock will take place in mbx response.
		 */
		FUNC2(bp, vf, mbx->first_tlv.tl.type);

		/* switch on the opcode */
		switch (mbx->first_tlv.tl.type) {
		case CHANNEL_TLV_ACQUIRE:
			FUNC5(bp, vf, mbx);
			return;
		case CHANNEL_TLV_INIT:
			FUNC7(bp, vf, mbx);
			return;
		case CHANNEL_TLV_SETUP_Q:
			FUNC11(bp, vf, mbx);
			return;
		case CHANNEL_TLV_SET_Q_FILTERS:
			FUNC10(bp, vf, mbx);
			return;
		case CHANNEL_TLV_TEARDOWN_Q:
			FUNC12(bp, vf, mbx);
			return;
		case CHANNEL_TLV_CLOSE:
			FUNC6(bp, vf, mbx);
			return;
		case CHANNEL_TLV_RELEASE:
			FUNC8(bp, vf, mbx);
			return;
		}

	} else {
		/* unknown TLV - this may belong to a VF driver from the future
		 * - a version written after this PF driver was written, which
		 * supports features unknown as of yet. Too bad since we don't
		 * support them. Or this may be because someone wrote a crappy
		 * VF driver and is sending garbage over the channel.
		 */
		FUNC0("unknown TLV. type %d length %d vf->state was %d. first 20 bytes of mailbox buffer:\n",
			  mbx->first_tlv.tl.type, mbx->first_tlv.tl.length,
			  vf->state);
		for (i = 0; i < 20; i++)
			FUNC1(BNX2X_MSG_IOV, "%x ",
				mbx->msg->req.tlv_buf_size.tlv_buffer[i]);
	}

	/* can we respond to VF (do we have an address for it?) */
	if (vf->state == VF_ACQUIRED || vf->state == VF_ENABLED) {
		/* mbx_resp uses the op_rc of the VF */
		vf->op_rc = PFVF_STATUS_NOT_SUPPORTED;

		/* notify the VF that we do not support this request */
		FUNC9(bp, vf);
	} else {
		/* can't send a response since this VF is unknown to us
		 * just ack the FW to release the mailbox and unlock
		 * the channel.
		 */
		FUNC14(bp, vf->abs_vfid);
		/* Firmware ack should be written before unlocking channel */
		FUNC13();
		FUNC4(bp, vf, mbx->first_tlv.tl.type);
	}
}