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
struct tcphdr {int /*<<< orphan*/  fin; int /*<<< orphan*/  rst; scalar_t__ ack; int /*<<< orphan*/  syn; int /*<<< orphan*/  source; int /*<<< orphan*/  dest; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct nes_vnic {int dummy; } ;
struct nes_cm_node {scalar_t__ state; TYPE_1__* nesqp; } ;
struct nes_cm_listener {int /*<<< orphan*/  ref_count; scalar_t__ conn_type; int /*<<< orphan*/ * cm_id; } ;
struct nes_cm_info {scalar_t__ conn_type; int /*<<< orphan*/ * cm_id; void* loc_port; void* loc_addr; void* rem_addr; void* rem_port; } ;
struct nes_cm_core {int dummy; } ;
struct iphdr {int /*<<< orphan*/  tot_len; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {scalar_t__ pau_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  NES_CM_LISTENER_ACTIVE_STATE ; 
 scalar_t__ NES_CM_STATE_LISTENING ; 
 scalar_t__ NES_CM_STATE_TSA ; 
 int /*<<< orphan*/  NES_DBG_CM ; 
 int /*<<< orphan*/  FUNC0 (struct nes_cm_node*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cm_accel_dropped_pkts ; 
 int /*<<< orphan*/  cm_packets_dropped ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct nes_cm_listener* FUNC5 (struct nes_cm_core*,void*,void*,int /*<<< orphan*/ ) ; 
 struct nes_cm_node* FUNC6 (struct nes_cm_core*,void*,void*,void*,void*) ; 
 struct nes_cm_node* FUNC7 (struct nes_cm_core*,struct nes_vnic*,struct nes_cm_info*,struct nes_cm_listener*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct nes_vnic*,TYPE_1__*) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct nes_cm_node*,struct sk_buff*,struct nes_cm_core*) ; 
 int /*<<< orphan*/  FUNC13 (struct nes_cm_core*,struct nes_cm_node*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC16(struct nes_cm_core *cm_core,
			    struct nes_vnic *nesvnic, struct sk_buff *skb)
{
	struct nes_cm_node *cm_node = NULL;
	struct nes_cm_listener *listener = NULL;
	struct iphdr *iph;
	struct tcphdr *tcph;
	struct nes_cm_info nfo;
	int skb_handled = 1;
	__be32 tmp_daddr, tmp_saddr;

	if (!skb)
		return 0;
	if (skb->len < sizeof(struct iphdr) + sizeof(struct tcphdr))
		return 0;

	iph = (struct iphdr *)skb->data;
	tcph = (struct tcphdr *)(skb->data + sizeof(struct iphdr));

	nfo.loc_addr = FUNC10(iph->daddr);
	nfo.loc_port = FUNC11(tcph->dest);
	nfo.rem_addr = FUNC10(iph->saddr);
	nfo.rem_port = FUNC11(tcph->source);

	tmp_daddr = FUNC3(iph->daddr);
	tmp_saddr = FUNC3(iph->saddr);

	FUNC8(NES_DBG_CM, "Received packet: dest=%pI4:0x%04X src=%pI4:0x%04X\n",
		  &tmp_daddr, tcph->dest, &tmp_saddr, tcph->source);

	do {
		cm_node = FUNC6(cm_core,
				    nfo.rem_port, nfo.rem_addr,
				    nfo.loc_port, nfo.loc_addr);

		if (!cm_node) {
			/* Only type of packet accepted are for */
			/* the PASSIVE open (syn only) */
			if ((!tcph->syn) || (tcph->ack)) {
				skb_handled = 0;
				break;
			}
			listener = FUNC5(cm_core, nfo.loc_addr,
						 nfo.loc_port,
						 NES_CM_LISTENER_ACTIVE_STATE);
			if (!listener) {
				nfo.cm_id = NULL;
				nfo.conn_type = 0;
				FUNC8(NES_DBG_CM, "Unable to find listener for the pkt\n");
				skb_handled = 0;
				break;
			}
			nfo.cm_id = listener->cm_id;
			nfo.conn_type = listener->conn_type;
			cm_node = FUNC7(cm_core, nesvnic, &nfo,
					       listener);
			if (!cm_node) {
				FUNC8(NES_DBG_CM, "Unable to allocate "
					  "node\n");
				cm_packets_dropped++;
				FUNC1(&listener->ref_count);
				FUNC4(skb);
				break;
			}
			if (!tcph->rst && !tcph->fin) {
				cm_node->state = NES_CM_STATE_LISTENING;
			} else {
				cm_packets_dropped++;
				FUNC13(cm_core, cm_node);
				FUNC4(skb);
				break;
			}
			FUNC0(cm_node);
		} else if (cm_node->state == NES_CM_STATE_TSA) {
			if (cm_node->nesqp->pau_mode)
				FUNC9(skb, nesvnic, cm_node->nesqp);
			else {
				FUNC13(cm_core, cm_node);
				FUNC2(&cm_accel_dropped_pkts);
				FUNC4(skb);
			}
			break;
		}
		FUNC14(skb);
		FUNC15(skb, sizeof(*tcph));
		skb->len = FUNC11(iph->tot_len);
		FUNC12(cm_node, skb, cm_core);
		FUNC13(cm_core, cm_node);
	} while (0);
	return skb_handled;
}