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
struct sk_buff {int /*<<< orphan*/  protocol; int /*<<< orphan*/  len; scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_bytes; } ;
struct emac_priv {TYPE_1__ net_dev_stats; int /*<<< orphan*/  ndev; } ;
struct emac_netpktobj {int /*<<< orphan*/  pkt_length; scalar_t__ pkt_token; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct emac_priv *priv,
			  struct emac_netpktobj *net_pkt_list)
{
	struct sk_buff *p_skb;
	p_skb = (struct sk_buff *)net_pkt_list->pkt_token;
	/* set length of packet */
	FUNC3(p_skb, net_pkt_list->pkt_length);
	FUNC0((unsigned long)p_skb->data, p_skb->len);
	p_skb->protocol = FUNC1(p_skb, priv->ndev);
	FUNC2(p_skb);
	priv->net_dev_stats.rx_bytes += net_pkt_list->pkt_length;
	priv->net_dev_stats.rx_packets++;
	return 0;
}