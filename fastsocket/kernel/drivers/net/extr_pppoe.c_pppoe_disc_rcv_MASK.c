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
struct sock {int /*<<< orphan*/  sk_state; } ;
struct sk_buff {int dummy; } ;
struct pppox_sock {int dummy; } ;
struct pppoe_net {int dummy; } ;
struct pppoe_hdr {scalar_t__ code; int /*<<< orphan*/  sid; } ;
struct packet_type {int dummy; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct TYPE_2__ {int /*<<< orphan*/  h_source; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NET_RX_SUCCESS ; 
 scalar_t__ PADT_CODE ; 
 int /*<<< orphan*/  PPPOX_ZOMBIE ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 struct pppox_sock* FUNC4 (struct pppoe_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct pppoe_hdr* FUNC6 (struct sk_buff*) ; 
 struct pppoe_net* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 struct sock* FUNC9 (struct pppox_sock*) ; 
 struct sk_buff* FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 

__attribute__((used)) static int FUNC13(struct sk_buff *skb, struct net_device *dev,
			  struct packet_type *pt, struct net_device *orig_dev)

{
	struct pppoe_hdr *ph;
	struct pppox_sock *po;
	struct pppoe_net *pn;

	skb = FUNC10(skb, GFP_ATOMIC);
	if (!skb)
		goto out;

	if (!FUNC8(skb, sizeof(struct pppoe_hdr)))
		goto abort;

	ph = FUNC6(skb);
	if (ph->code != PADT_CODE)
		goto abort;

	pn = FUNC7(FUNC2(dev));
	po = FUNC4(pn, ph->sid, FUNC3(skb)->h_source, dev->ifindex);
	if (po) {
		struct sock *sk = FUNC9(po);

		FUNC0(sk);

		/* If the user has locked the socket, just ignore
		 * the packet.  With the way two rcv protocols hook into
		 * one socket family type, we cannot (easily) distinguish
		 * what kind of SKB it is during backlog rcv.
		 */
		if (FUNC11(sk) == 0) {
			/* We're no longer connect at the PPPOE layer,
			 * and must wait for ppp channel to disconnect us.
			 */
			sk->sk_state = PPPOX_ZOMBIE;
		}

		FUNC1(sk);
		FUNC12(sk);
	}

abort:
	FUNC5(skb);
out:
	return NET_RX_SUCCESS; /* Lies... :-) */
}