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
typedef  int u8 ;
typedef  int u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {int num_tx_rings_p_up; } ;

/* Variables and functions */
 int VLAN_PRIO_SHIFT ; 
 int FUNC0 (struct net_device*,struct sk_buff*,int) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 struct mlx4_en_priv* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*,struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 

u16 FUNC6(struct net_device *dev, struct sk_buff *skb)
{
	struct mlx4_en_priv *priv = FUNC2(dev);
	u16 rings_p_up = priv->num_tx_rings_p_up;
	u8 up = 0;

	if (FUNC1(dev))
		return FUNC3(dev, skb);

	if (FUNC5(skb))
		up = FUNC4(skb) >> VLAN_PRIO_SHIFT;

	return FUNC0(dev, skb, rings_p_up) + up * rings_p_up;
}