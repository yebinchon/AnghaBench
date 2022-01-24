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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct can_priv* FUNC1 (struct net_device*) ; 

void FUNC2(struct net_device *dev, int idx)
{
	struct can_priv *priv = FUNC1(dev);

	if (priv->echo_skb[idx]) {
		FUNC0(priv->echo_skb[idx]);
		priv->echo_skb[idx] = NULL;
	}
}