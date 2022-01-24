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
typedef  int u8 ;
typedef  int u32 ;
struct udphdr {int dummy; } ;
struct sk_buff {int data; scalar_t__ protocol; } ;
struct eth_tx_parse_bd_e1x {int ip_hlen_w; int /*<<< orphan*/  tcp_pseudo_csum; void* total_hlen_w; void* global_data; } ;
struct bnx2x {int dummy; } ;
typedef  int /*<<< orphan*/  s8 ;
struct TYPE_2__ {int /*<<< orphan*/  check; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int ETH_TX_PARSE_BD_E1X_LLC_SNAP_EN_SHIFT ; 
 int /*<<< orphan*/  NETIF_MSG_TX_QUEUED ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int XMIT_CSUM_TCP ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int FUNC8 (struct sk_buff*) ; 
 int FUNC9 (struct sk_buff*) ; 
 TYPE_1__* FUNC10 (struct sk_buff*) ; 
 int FUNC11 (struct sk_buff*) ; 

__attribute__((used)) static u8 FUNC12(struct bnx2x *bp, struct sk_buff *skb,
			     struct eth_tx_parse_bd_e1x *pbd,
			     u32 xmit_type)
{
	u8 hlen = (FUNC8(skb) - skb->data) >> 1;

	/* for now NS flag is not used in Linux */
	pbd->global_data =
		FUNC6(hlen |
			    ((skb->protocol == FUNC5(ETH_P_8021Q)) <<
			     ETH_TX_PARSE_BD_E1X_LLC_SNAP_EN_SHIFT));

	pbd->ip_hlen_w = (FUNC9(skb) -
			FUNC8(skb)) >> 1;

	hlen += pbd->ip_hlen_w;

	/* We support checksum offload for TCP and UDP only */
	if (xmit_type & XMIT_CSUM_TCP)
		hlen += FUNC11(skb) / 2;
	else
		hlen += sizeof(struct udphdr) / 2;

	pbd->total_hlen_w = FUNC6(hlen);
	hlen = hlen*2;

	if (xmit_type & XMIT_CSUM_TCP) {
		pbd->tcp_pseudo_csum = FUNC4(FUNC10(skb)->check);

	} else {
		s8 fix = FUNC2(skb); /* signed! */

		FUNC0(NETIF_MSG_TX_QUEUED,
		   "hlen %d  fix %d  csum before fix %x\n",
		   FUNC7(pbd->total_hlen_w), fix, FUNC1(skb));

		/* HW bug: fixup the CSUM */
		pbd->tcp_pseudo_csum =
			FUNC3(FUNC9(skb),
				       FUNC1(skb), fix);

		FUNC0(NETIF_MSG_TX_QUEUED, "csum after fix %x\n",
		   pbd->tcp_pseudo_csum);
	}

	return hlen;
}