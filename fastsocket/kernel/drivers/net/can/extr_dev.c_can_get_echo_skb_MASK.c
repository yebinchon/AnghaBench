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
struct net_device {int dummy; } ;
struct can_priv {int /*<<< orphan*/ ** echo_skb; } ;

/* Variables and functions */
 struct can_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct net_device *dev, int idx)
{
	struct can_priv *priv = FUNC0(dev);

	if (priv->echo_skb[idx]) {
		FUNC1(priv->echo_skb[idx]);
		priv->echo_skb[idx] = NULL;
	}
}