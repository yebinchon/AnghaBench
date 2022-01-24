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
typedef  void* u32 ;
struct tcphdr {int doff; int /*<<< orphan*/  ack_seq; int /*<<< orphan*/  seq; } ;
struct sk_buff {int len; } ;
struct TYPE_3__ {int /*<<< orphan*/  rcv_nxt; void* rem_ack_num; } ;
struct nes_cm_node {int state; int /*<<< orphan*/  cm_core; TYPE_2__* cm_id; TYPE_1__ tcp_cntxt; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* rem_ref ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int EINVAL ; 
#define  NES_CM_STATE_CLOSED 140 
#define  NES_CM_STATE_CLOSING 139 
#define  NES_CM_STATE_ESTABLISHED 138 
#define  NES_CM_STATE_FIN_WAIT1 137 
#define  NES_CM_STATE_FIN_WAIT2 136 
#define  NES_CM_STATE_LAST_ACK 135 
#define  NES_CM_STATE_LISTENING 134 
#define  NES_CM_STATE_MPAREQ_RCVD 133 
#define  NES_CM_STATE_MPAREQ_SENT 132 
#define  NES_CM_STATE_SYN_RCVD 131 
#define  NES_CM_STATE_SYN_SENT 130 
#define  NES_CM_STATE_TSA 129 
#define  NES_CM_STATE_UNKNOWN 128 
 int /*<<< orphan*/  FUNC0 (struct nes_cm_node*) ; 
 scalar_t__ FUNC1 (struct nes_cm_node*,struct tcphdr*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct nes_cm_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct nes_cm_node*,struct sk_buff*) ; 
 int FUNC6 (struct nes_cm_node*,struct tcphdr*,struct sk_buff*,int,int) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct nes_cm_node*) ; 
 int /*<<< orphan*/  FUNC9 (struct nes_cm_node*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC12(struct nes_cm_node *cm_node, struct sk_buff *skb,
			  struct tcphdr *tcph)
{
	int datasize = 0;
	u32 inc_sequence;
	int ret = 0;
	int optionsize;

	optionsize = (tcph->doff << 2) - sizeof(struct tcphdr);

	if (FUNC1(cm_node, tcph, skb))
		return -EINVAL;

	FUNC10(skb, tcph->doff << 2);
	inc_sequence = FUNC7(tcph->seq);
	datasize = skb->len;
	switch (cm_node->state) {
	case NES_CM_STATE_SYN_RCVD:
		/* Passive OPEN */
		FUNC2(cm_node);
		ret = FUNC6(cm_node, tcph, skb, optionsize, 1);
		if (ret)
			break;
		cm_node->tcp_cntxt.rem_ack_num = FUNC7(tcph->ack_seq);
		cm_node->state = NES_CM_STATE_ESTABLISHED;
		if (datasize) {
			cm_node->tcp_cntxt.rcv_nxt = inc_sequence + datasize;
			FUNC5(cm_node, skb);
		} else { /* rcvd ACK only */
			FUNC3(skb);
		}
		break;
	case NES_CM_STATE_ESTABLISHED:
		/* Passive OPEN */
		FUNC2(cm_node);
		if (datasize) {
			cm_node->tcp_cntxt.rcv_nxt = inc_sequence + datasize;
			FUNC5(cm_node, skb);
		} else {
			FUNC4(skb);
		}
		break;
	case NES_CM_STATE_MPAREQ_SENT:
		cm_node->tcp_cntxt.rem_ack_num = FUNC7(tcph->ack_seq);
		if (datasize) {
			cm_node->tcp_cntxt.rcv_nxt = inc_sequence + datasize;
			FUNC5(cm_node, skb);
		} else { /* Could be just an ack pkt.. */
			FUNC3(skb);
		}
		break;
	case NES_CM_STATE_LISTENING:
		FUNC2(cm_node);
		cm_node->state = NES_CM_STATE_CLOSED;
		FUNC9(cm_node, skb);
		break;
	case NES_CM_STATE_CLOSED:
		FUNC2(cm_node);
		FUNC0(cm_node);
		FUNC9(cm_node, skb);
		break;
	case NES_CM_STATE_LAST_ACK:
	case NES_CM_STATE_CLOSING:
		FUNC2(cm_node);
		cm_node->state = NES_CM_STATE_CLOSED;
		cm_node->cm_id->rem_ref(cm_node->cm_id);
		FUNC8(cm_node->cm_core, cm_node);
		FUNC4(skb);
		break;
	case NES_CM_STATE_FIN_WAIT1:
		FUNC2(cm_node);
		FUNC4(skb);
		cm_node->state = NES_CM_STATE_FIN_WAIT2;
		break;
	case NES_CM_STATE_SYN_SENT:
	case NES_CM_STATE_FIN_WAIT2:
	case NES_CM_STATE_TSA:
	case NES_CM_STATE_MPAREQ_RCVD:
	case NES_CM_STATE_UNKNOWN:
	default:
		FUNC2(cm_node);
		FUNC4(skb);
		break;
	}
	return ret;
}