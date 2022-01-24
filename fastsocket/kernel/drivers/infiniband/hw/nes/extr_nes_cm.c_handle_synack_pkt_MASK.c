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
typedef  void* u32 ;
struct tcphdr {int doff; int /*<<< orphan*/  ack_seq; int /*<<< orphan*/  seq; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {void* loc_seq_num; int /*<<< orphan*/  rcv_nxt; void* rem_ack_num; } ;
struct nes_cm_node {int state; TYPE_1__ tcp_cntxt; } ;

/* Variables and functions */
#define  NES_CM_STATE_CLOSED 139 
#define  NES_CM_STATE_CLOSING 138 
#define  NES_CM_STATE_ESTABLISHED 137 
#define  NES_CM_STATE_FIN_WAIT1 136 
#define  NES_CM_STATE_FIN_WAIT2 135 
#define  NES_CM_STATE_LAST_ACK 134 
#define  NES_CM_STATE_LISTENING 133 
#define  NES_CM_STATE_MPAREQ_RCVD 132 
#define  NES_CM_STATE_MPAREQ_SENT 131 
#define  NES_CM_STATE_SYN_SENT 130 
#define  NES_CM_STATE_TSA 129 
#define  NES_CM_STATE_UNKNOWN 128 
 int /*<<< orphan*/  NES_DBG_CM ; 
 int /*<<< orphan*/  FUNC0 (struct nes_cm_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct nes_cm_node*,struct tcphdr*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct nes_cm_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct nes_cm_node*,struct tcphdr*,struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct nes_cm_node*) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nes_cm_node*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nes_cm_node*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct nes_cm_node*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct nes_cm_node *cm_node, struct sk_buff *skb,
			      struct tcphdr *tcph)
{
	int ret;
	u32 inc_sequence;
	int optionsize;

	optionsize = (tcph->doff << 2) - sizeof(struct tcphdr);
	FUNC10(skb, 0);
	inc_sequence = FUNC6(tcph->seq);
	switch (cm_node->state) {
	case NES_CM_STATE_SYN_SENT:
		FUNC2(cm_node);
		/* active open */
		if (FUNC1(cm_node, tcph, skb))
			return;
		cm_node->tcp_cntxt.rem_ack_num = FUNC6(tcph->ack_seq);
		/* setup options */
		ret = FUNC4(cm_node, tcph, skb, optionsize, 0);
		if (ret) {
			FUNC5(NES_DBG_CM, "cm_node=%p tcp_options failed\n",
				  cm_node);
			break;
		}
		FUNC2(cm_node);
		cm_node->tcp_cntxt.rcv_nxt = inc_sequence + 1;
		FUNC8(cm_node, skb);
		cm_node->state = NES_CM_STATE_MPAREQ_SENT;
		break;
	case NES_CM_STATE_MPAREQ_RCVD:
		/* passive open, so should not be here */
		FUNC7(cm_node, skb, 1);
		break;
	case NES_CM_STATE_LISTENING:
		cm_node->tcp_cntxt.loc_seq_num = FUNC6(tcph->ack_seq);
		FUNC2(cm_node);
		cm_node->state = NES_CM_STATE_CLOSED;
		FUNC9(cm_node, skb);
		break;
	case NES_CM_STATE_CLOSED:
		cm_node->tcp_cntxt.loc_seq_num = FUNC6(tcph->ack_seq);
		FUNC2(cm_node);
		FUNC0(cm_node);
		FUNC9(cm_node, skb);
		break;
	case NES_CM_STATE_ESTABLISHED:
	case NES_CM_STATE_FIN_WAIT1:
	case NES_CM_STATE_FIN_WAIT2:
	case NES_CM_STATE_LAST_ACK:
	case NES_CM_STATE_TSA:
	case NES_CM_STATE_CLOSING:
	case NES_CM_STATE_UNKNOWN:
	case NES_CM_STATE_MPAREQ_SENT:
	default:
		FUNC3(skb);
		break;
	}
}