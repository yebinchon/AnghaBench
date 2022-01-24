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
struct vxlanhdr {int vx_flags; int vx_vni; } ;
struct vxlan_sock {int /*<<< orphan*/  (* rcv ) (struct vxlan_sock*,struct sk_buff*,int) ;} ;
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int /*<<< orphan*/  sport; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_TEB ; 
 int VXLAN_FLAGS ; 
 int /*<<< orphan*/  VXLAN_HLEN ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct vxlan_sock*,struct sk_buff*,int) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 
 struct vxlan_sock* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct sock *sk, struct sk_buff *skb)
{
	struct vxlan_sock *vs;
	struct vxlanhdr *vxh;
	__be16 port;

	/* Need Vxlan and inner Ethernet header to be present */
	if (!FUNC7(skb, VXLAN_HLEN))
		goto error;

	/* Return packets with reserved bits set */
	vxh = (struct vxlanhdr *)(FUNC10(skb) + 1);
	if (vxh->vx_flags != FUNC0(VXLAN_FLAGS) ||
	    (vxh->vx_vni & FUNC0(0xff))) {
		FUNC5(skb->dev, "invalid vxlan flags=%#x vni=%#x\n",
			   FUNC6(vxh->vx_flags), FUNC6(vxh->vx_vni));
		goto error;
	}

	if (FUNC3(skb, VXLAN_HLEN, FUNC1(ETH_P_TEB)))
		goto drop;

	port = FUNC2(sk)->sport;

	vs = FUNC11(FUNC8(sk), port);
	if (!vs)
		goto drop;

	vs->rcv(vs, skb, vxh->vx_vni);
	return 0;

drop:
	/* Consume bad packet */
	FUNC4(skb);
	return 0;

error:
	/* Return non vxlan pkt */
	return 1;
}