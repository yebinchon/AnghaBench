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
struct net_device {int dummy; } ;
struct can_priv {int /*<<< orphan*/  can_stats; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  IFLA_INFO_XSTATS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct can_priv* FUNC1 (struct net_device const*) ; 

__attribute__((used)) static int FUNC2(struct sk_buff *skb, const struct net_device *dev)
{
	struct can_priv *priv = FUNC1(dev);

	FUNC0(skb, IFLA_INFO_XSTATS,
		sizeof(priv->can_stats), &priv->can_stats);

	return 0;

nla_put_failure:
	return -EMSGSIZE;
}