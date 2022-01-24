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
struct vxlan_rdst {scalar_t__ remote_ifindex; scalar_t__ remote_ip; scalar_t__ remote_vni; } ;
struct vxlan_dev {int ttl; int tos; int flags; int /*<<< orphan*/  dst_port; scalar_t__ addrmax; scalar_t__ age_interval; scalar_t__ saddr; int /*<<< orphan*/  port_max; int /*<<< orphan*/  port_min; struct vxlan_rdst default_dst; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct ifla_vxlan_port_range {int /*<<< orphan*/  high; int /*<<< orphan*/  low; } ;
typedef  int /*<<< orphan*/  ports ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  IFLA_VXLAN_AGEING ; 
 int /*<<< orphan*/  IFLA_VXLAN_GROUP ; 
 int /*<<< orphan*/  IFLA_VXLAN_ID ; 
 int /*<<< orphan*/  IFLA_VXLAN_L2MISS ; 
 int /*<<< orphan*/  IFLA_VXLAN_L3MISS ; 
 int /*<<< orphan*/  IFLA_VXLAN_LEARNING ; 
 int /*<<< orphan*/  IFLA_VXLAN_LIMIT ; 
 int /*<<< orphan*/  IFLA_VXLAN_LINK ; 
 int /*<<< orphan*/  IFLA_VXLAN_LOCAL ; 
 int /*<<< orphan*/  IFLA_VXLAN_PORT ; 
 int /*<<< orphan*/  IFLA_VXLAN_PORT_RANGE ; 
 int /*<<< orphan*/  IFLA_VXLAN_PROXY ; 
 int /*<<< orphan*/  IFLA_VXLAN_RSC ; 
 int /*<<< orphan*/  IFLA_VXLAN_TOS ; 
 int /*<<< orphan*/  IFLA_VXLAN_TTL ; 
 int VXLAN_F_L2MISS ; 
 int VXLAN_F_L3MISS ; 
 int VXLAN_F_LEARN ; 
 int VXLAN_F_PROXY ; 
 int VXLAN_F_RSC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct vxlan_dev* FUNC1 (struct net_device const*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int,struct ifla_vxlan_port_range*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, const struct net_device *dev)
{
	const struct vxlan_dev *vxlan = FUNC1(dev);
	const struct vxlan_rdst *dst = &vxlan->default_dst;
	struct ifla_vxlan_port_range ports = {
		.low =  FUNC0(vxlan->port_min),
		.high = FUNC0(vxlan->port_max),
	};

	if (FUNC5(skb, IFLA_VXLAN_ID, dst->remote_vni))
		goto nla_put_failure;

	if (dst->remote_ip && FUNC4(skb, IFLA_VXLAN_GROUP, dst->remote_ip))
		goto nla_put_failure;

	if (dst->remote_ifindex && FUNC5(skb, IFLA_VXLAN_LINK, dst->remote_ifindex))
		goto nla_put_failure;

	if (vxlan->saddr && FUNC4(skb, IFLA_VXLAN_LOCAL, vxlan->saddr))
		goto nla_put_failure;

	if (FUNC6(skb, IFLA_VXLAN_TTL, vxlan->ttl) ||
	    FUNC6(skb, IFLA_VXLAN_TOS, vxlan->tos) ||
	    FUNC6(skb, IFLA_VXLAN_LEARNING,
			!!(vxlan->flags & VXLAN_F_LEARN)) ||
	    FUNC6(skb, IFLA_VXLAN_PROXY,
			!!(vxlan->flags & VXLAN_F_PROXY)) ||
	    FUNC6(skb, IFLA_VXLAN_RSC, !!(vxlan->flags & VXLAN_F_RSC)) ||
	    FUNC6(skb, IFLA_VXLAN_L2MISS,
			!!(vxlan->flags & VXLAN_F_L2MISS)) ||
	    FUNC6(skb, IFLA_VXLAN_L3MISS,
			!!(vxlan->flags & VXLAN_F_L3MISS)) ||
	    FUNC5(skb, IFLA_VXLAN_AGEING, vxlan->age_interval) ||
	    FUNC5(skb, IFLA_VXLAN_LIMIT, vxlan->addrmax) ||
	    FUNC3(skb, IFLA_VXLAN_PORT, vxlan->dst_port))
		goto nla_put_failure;

	if (FUNC2(skb, IFLA_VXLAN_PORT_RANGE, sizeof(ports), &ports))
		goto nla_put_failure;

	return 0;

nla_put_failure:
	return -EMSGSIZE;
}