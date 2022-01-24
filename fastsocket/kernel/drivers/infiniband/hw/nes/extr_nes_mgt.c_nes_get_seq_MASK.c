#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct tcphdr {int /*<<< orphan*/  seq; int /*<<< orphan*/  rst; int /*<<< orphan*/  fin; int /*<<< orphan*/  window; int /*<<< orphan*/  ack_seq; } ;
struct sk_buff {int /*<<< orphan*/ * cb; } ;
struct nes_rskb_cb {scalar_t__ data_start; } ;
struct iphdr {int ihl; } ;

/* Variables and functions */
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC2(struct sk_buff *skb, u32 *ack, u16 *wnd, u32 *fin_rcvd, u32 *rst_rcvd)
{
	struct nes_rskb_cb *cb = (struct nes_rskb_cb *)&skb->cb[0];
	struct iphdr *iph = (struct iphdr *)(cb->data_start + ETH_HLEN);
	struct tcphdr *tcph = (struct tcphdr *)(((char *)iph) + (4 * iph->ihl));

	*ack = FUNC1(tcph->ack_seq);
	*wnd = FUNC0(tcph->window);
	*fin_rcvd = tcph->fin;
	*rst_rcvd = tcph->rst;
	return FUNC1(tcph->seq);
}