#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vxlanhdr {int /*<<< orphan*/  vx_vni; int /*<<< orphan*/  vx_flags; } ;
struct vxlan_sock {TYPE_3__* sock; } ;
struct udphdr {scalar_t__ check; int /*<<< orphan*/  len; void* source; void* dest; } ;
struct sk_buff {int encapsulation; int /*<<< orphan*/  len; scalar_t__ vlan_tci; } ;
struct TYPE_4__ {int header_len; int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {TYPE_1__ dst; } ;
struct rtable {TYPE_2__ u; } ;
struct net {int dummy; } ;
struct iphdr {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  void* __be16 ;
struct TYPE_6__ {int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int VLAN_HLEN ; 
 int /*<<< orphan*/  VXLAN_FLAGS ; 
 int VXLAN_HLEN ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC7 (struct sk_buff*) ; 
 int FUNC8 (struct net*,struct rtable*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,struct iphdr const*) ; 
 int FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 struct udphdr* FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 scalar_t__ FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct sk_buff*) ; 

int FUNC16(struct net *net, struct vxlan_sock *vs,
		   struct rtable *rt, struct sk_buff *skb,
		   __be32 src, __be32 dst, __u8 tos, __u8 ttl, __be16 df,
		   __be16 src_port, __be16 dst_port, __be32 vni)
{
	struct vxlanhdr *vxh;
	struct udphdr *uh;
	int min_headroom;
	int err;
	const struct iphdr *inner_ip;

	if (!skb->encapsulation) {
		/* skb_reset_inner_headers(skb); */
		skb->encapsulation = 1;
	}

	min_headroom = FUNC0(rt->u.dst.dev) + rt->u.dst.header_len
			+ VXLAN_HLEN + sizeof(struct iphdr)
			+ (FUNC14(skb) ? VLAN_HLEN : 0);

	/* Need space for new headers (invalidates iph ptr) */
	err = FUNC9(skb, min_headroom);
	if (FUNC12(err))
		return err;

	if (FUNC14(skb)) {
		if (FUNC1(!FUNC3(skb,
					    FUNC13(skb))))
			return -ENOMEM;

		skb->vlan_tci = 0;
	}

	inner_ip = FUNC7(skb);

	vxh = (struct vxlanhdr *) FUNC2(skb, sizeof(*vxh));
	vxh->vx_flags = FUNC5(VXLAN_FLAGS);
	vxh->vx_vni = vni;

	FUNC2(skb, sizeof(*uh));
	FUNC10(skb);
	uh = FUNC11(skb);

	uh->dest = dst_port;
	uh->source = src_port;

	uh->len = FUNC6(skb->len);
	uh->check = 0;

	FUNC15(vs->sock->sk, skb);

	err = FUNC4(skb);
	if (err)
		return err;

	return FUNC8(net, rt, skb, src, dst,
			IPPROTO_UDP, tos, ttl, df, inner_ip);
}