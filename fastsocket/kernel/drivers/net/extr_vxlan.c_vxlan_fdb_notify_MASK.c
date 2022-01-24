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
struct vxlan_fdb {int dummy; } ;
struct vxlan_dev {int /*<<< orphan*/  dev; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  RTNLGRP_NEIGH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct net* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vxlan_fdb*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct sk_buff*,struct vxlan_dev*,struct vxlan_fdb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(struct vxlan_dev *vxlan,
			     struct vxlan_fdb *fdb, int type)
{
	struct net *net = FUNC1(vxlan->dev);
	struct sk_buff *skb;
	int err = -ENOBUFS;

	skb = FUNC4(FUNC8(), GFP_ATOMIC);
	if (skb == NULL)
		goto errout;

	err = FUNC7(skb, vxlan, fdb, 0, 0, type, 0,
			     FUNC2(fdb));
	if (err < 0) {
		/* -EMSGSIZE implies BUG in vxlan_nlmsg_size() */
		FUNC0(err == -EMSGSIZE);
		FUNC3(skb);
		goto errout;
	}

	FUNC5(skb, net, 0, RTNLGRP_NEIGH, NULL, GFP_ATOMIC);
	return;
errout:
	if (err < 0)
		FUNC6(net, RTNLGRP_NEIGH, err);
}