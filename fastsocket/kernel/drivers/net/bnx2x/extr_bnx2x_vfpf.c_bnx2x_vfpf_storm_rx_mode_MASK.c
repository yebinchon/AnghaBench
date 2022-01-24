#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  length; } ;
struct TYPE_13__ {TYPE_4__ tl; } ;
struct vfpf_set_q_filters_tlv {TYPE_6__ first_tlv; scalar_t__ vf_qid; int /*<<< orphan*/  flags; int /*<<< orphan*/  rx_mask; } ;
struct TYPE_12__ {int status; } ;
struct pfvf_general_resp_tlv {TYPE_5__ hdr; } ;
struct channel_list_end_tlv {int dummy; } ;
struct bnx2x {int rx_mode; int /*<<< orphan*/  vf2pf_mbox_mapping; TYPE_3__* vf2pf_mbox; } ;
struct TYPE_9__ {struct pfvf_general_resp_tlv general_resp; } ;
struct TYPE_8__ {struct vfpf_set_q_filters_tlv set_q_filters; } ;
struct TYPE_10__ {TYPE_2__ resp; TYPE_1__ req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
#define  BNX2X_RX_MODE_ALLMULTI 131 
#define  BNX2X_RX_MODE_NONE 130 
#define  BNX2X_RX_MODE_NORMAL 129 
#define  BNX2X_RX_MODE_PROMISC 128 
 int /*<<< orphan*/  CHANNEL_TLV_LIST_END ; 
 int /*<<< orphan*/  CHANNEL_TLV_SET_Q_FILTERS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  NETIF_MSG_IFUP ; 
 int PFVF_STATUS_SUCCESS ; 
 int /*<<< orphan*/  VFPF_RX_MASK_ACCEPT_ALL_MULTICAST ; 
 int /*<<< orphan*/  VFPF_RX_MASK_ACCEPT_ALL_UNICAST ; 
 int /*<<< orphan*/  VFPF_RX_MASK_ACCEPT_BROADCAST ; 
 int /*<<< orphan*/  VFPF_RX_MASK_ACCEPT_MATCHED_MULTICAST ; 
 int /*<<< orphan*/  VFPF_RX_MASK_ACCEPT_MATCHED_UNICAST ; 
 int /*<<< orphan*/  VFPF_RX_MASK_ACCEPT_NONE ; 
 int /*<<< orphan*/  VFPF_SET_Q_FILTERS_RX_MASK_CHANGED ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct vfpf_set_q_filters_tlv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,struct vfpf_set_q_filters_tlv*) ; 
 int FUNC4 (struct bnx2x*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,TYPE_6__*,int /*<<< orphan*/ ,int) ; 

int FUNC7(struct bnx2x *bp)
{
	int mode = bp->rx_mode;
	struct vfpf_set_q_filters_tlv *req = &bp->vf2pf_mbox->req.set_q_filters;
	struct pfvf_general_resp_tlv *resp = &bp->vf2pf_mbox->resp.general_resp;
	int rc;

	/* clear mailbox and prep first tlv */
	FUNC6(bp, &req->first_tlv, CHANNEL_TLV_SET_Q_FILTERS,
			sizeof(*req));

	FUNC1(NETIF_MSG_IFUP, "Rx mode is %d\n", mode);

	switch (mode) {
	case BNX2X_RX_MODE_NONE: /* no Rx */
		req->rx_mask = VFPF_RX_MASK_ACCEPT_NONE;
		break;
	case BNX2X_RX_MODE_NORMAL:
		req->rx_mask = VFPF_RX_MASK_ACCEPT_MATCHED_MULTICAST;
		req->rx_mask |= VFPF_RX_MASK_ACCEPT_MATCHED_UNICAST;
		req->rx_mask |= VFPF_RX_MASK_ACCEPT_BROADCAST;
		break;
	case BNX2X_RX_MODE_ALLMULTI:
		req->rx_mask = VFPF_RX_MASK_ACCEPT_ALL_MULTICAST;
		req->rx_mask |= VFPF_RX_MASK_ACCEPT_MATCHED_UNICAST;
		req->rx_mask |= VFPF_RX_MASK_ACCEPT_BROADCAST;
		break;
	case BNX2X_RX_MODE_PROMISC:
		req->rx_mask = VFPF_RX_MASK_ACCEPT_ALL_UNICAST;
		req->rx_mask |= VFPF_RX_MASK_ACCEPT_ALL_MULTICAST;
		req->rx_mask |= VFPF_RX_MASK_ACCEPT_BROADCAST;
		break;
	default:
		FUNC0("BAD rx mode (%d)\n", mode);
		rc = -EINVAL;
		goto out;
	}

	req->flags |= VFPF_SET_Q_FILTERS_RX_MASK_CHANGED;
	req->vf_qid = 0;

	/* add list termination tlv */
	FUNC2(bp, req, req->first_tlv.tl.length, CHANNEL_TLV_LIST_END,
		      sizeof(struct channel_list_end_tlv));

	/* output tlvs list */
	FUNC3(bp, req);

	rc = FUNC4(bp, &resp->hdr.status, bp->vf2pf_mbox_mapping);
	if (rc)
		FUNC0("Sending a message failed: %d\n", rc);

	if (resp->hdr.status != PFVF_STATUS_SUCCESS) {
		FUNC0("Set Rx mode failed: %d\n", resp->hdr.status);
		rc = -EINVAL;
	}
out:
	FUNC5(bp, &req->first_tlv);

	return rc;
}