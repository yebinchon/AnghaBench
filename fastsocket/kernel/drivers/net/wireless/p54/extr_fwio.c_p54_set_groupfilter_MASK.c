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
struct sk_buff {int dummy; } ;
struct p54_group_address_table {int /*<<< orphan*/  mac_list; void* num_address; void* filter_enable; } ;
struct p54_common {int filter_flags; int mc_maclist_num; int /*<<< orphan*/  mc_maclist; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FIF_ALLMULTI ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MC_FILTER_ADDRESS_NUM ; 
 int /*<<< orphan*/  P54_CONTROL_TYPE_GROUP_ADDRESS_TABLE ; 
 int /*<<< orphan*/  P54_HDR_FLAG_CONTROL_OPSET ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC3 (struct p54_common*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct p54_common*,struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int) ; 

int FUNC6(struct p54_common *priv)
{
	struct p54_group_address_table *grp;
	struct sk_buff *skb;
	bool on = false;

	skb = FUNC3(priv, P54_HDR_FLAG_CONTROL_OPSET, sizeof(*grp),
			    P54_CONTROL_TYPE_GROUP_ADDRESS_TABLE, GFP_KERNEL);
	if (!skb)
		return -ENOMEM;

	grp = (struct p54_group_address_table *)FUNC5(skb, sizeof(*grp));

	on = !(priv->filter_flags & FIF_ALLMULTI) &&
	     (priv->mc_maclist_num > 0 &&
	      priv->mc_maclist_num <= MC_FILTER_ADDRESS_NUM);

	if (on) {
		grp->filter_enable = FUNC0(1);
		grp->num_address = FUNC0(priv->mc_maclist_num);
		FUNC1(grp->mac_list, priv->mc_maclist, sizeof(grp->mac_list));
	} else {
		grp->filter_enable = FUNC0(0);
		grp->num_address = FUNC0(0);
		FUNC2(grp->mac_list, 0, sizeof(grp->mac_list));
	}

	FUNC4(priv, skb);
	return 0;
}