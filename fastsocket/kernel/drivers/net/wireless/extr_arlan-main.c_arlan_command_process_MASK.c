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
struct arlan_private {int card_polling_interval; scalar_t__ waiting_command_mask; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct arlan_private* FUNC1 (struct net_device*) ; 

__attribute__((used)) static inline void FUNC2(struct net_device *dev)
{
	struct arlan_private *priv = FUNC1(dev);

	int times = 0;
	while (priv->waiting_command_mask && times < 8)
	{
		if (priv->waiting_command_mask)
		{
			if (FUNC0(dev, 0))
				break;
			times++;
		}
		/* if long command, we won't repeat trying */ ;
		if (priv->card_polling_interval > 1)
			break;
		times++;
	}
}