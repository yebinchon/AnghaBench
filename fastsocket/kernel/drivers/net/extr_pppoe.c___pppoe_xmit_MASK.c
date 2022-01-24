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
struct sock {int sk_state; } ;
struct sk_buff {int len; struct net_device* dev; int /*<<< orphan*/  protocol; } ;
struct TYPE_2__ {int /*<<< orphan*/  remote; } ;
struct pppox_sock {TYPE_1__ pppoe_pa; int /*<<< orphan*/  num; struct net_device* pppoe_dev; } ;
struct pppoe_hdr {int ver; int type; int /*<<< orphan*/  length; int /*<<< orphan*/  sid; scalar_t__ code; } ;
struct net_device {scalar_t__ hard_header_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_PPP_SES ; 
 int PPPOX_CONNECTED ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct pppoe_hdr* FUNC6 (struct sk_buff*) ; 
 struct pppox_sock* FUNC7 (struct sock*) ; 
 scalar_t__ FUNC8 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct sock *sk, struct sk_buff *skb)
{
	struct pppox_sock *po = FUNC7(sk);
	struct net_device *dev = po->pppoe_dev;
	struct pppoe_hdr *ph;
	int data_len = skb->len;

	/* The higher-level PPP code (ppp_unregister_channel()) ensures the PPP
	 * xmit operations conclude prior to an unregistration call.  Thus
	 * sk->sk_state cannot change, so we don't need to do lock_sock().
	 * But, we also can't do a lock_sock since that introduces a potential
	 * deadlock as we'd reverse the lock ordering used when calling
	 * ppp_unregister_channel().
	 */

	if (FUNC10(sk, SOCK_DEAD) || !(sk->sk_state & PPPOX_CONNECTED))
		goto abort;

	if (!dev)
		goto abort;

	/* Copy the data if there is no space for the header or if it's
	 * read-only.
	 */
	if (FUNC8(skb, sizeof(*ph) + dev->hard_header_len))
		goto abort;

	FUNC0(skb, sizeof(*ph));
	FUNC9(skb);

	ph = FUNC6(skb);
	ph->ver	= 1;
	ph->type = 1;
	ph->code = 0;
	ph->sid	= po->num;
	ph->length = FUNC4(data_len);

	skb->protocol = FUNC1(ETH_P_PPP_SES);
	skb->dev = dev;

	FUNC2(skb, dev, ETH_P_PPP_SES,
			po->pppoe_pa.remote, NULL, data_len);

	FUNC3(skb);
	return 1;

abort:
	FUNC5(skb);
	return 1;
}