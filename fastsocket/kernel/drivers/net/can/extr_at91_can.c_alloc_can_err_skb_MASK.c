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
struct can_frame {int /*<<< orphan*/  can_dlc; int /*<<< orphan*/  can_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_ERR_DLC ; 
 int /*<<< orphan*/  CAN_ERR_FLAG ; 
 struct sk_buff* FUNC0 (struct net_device*,struct can_frame**) ; 
 int /*<<< orphan*/  FUNC1 (struct can_frame*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC3(struct net_device *dev,
		struct can_frame **cf)
{
	struct sk_buff *skb;

	skb = FUNC0(dev, cf);
	if (FUNC2(!skb))
		return NULL;

	FUNC1(*cf, 0, sizeof(struct can_frame));
	(*cf)->can_id = CAN_ERR_FLAG;
	(*cf)->can_dlc = CAN_ERR_DLC;

	return skb;
}