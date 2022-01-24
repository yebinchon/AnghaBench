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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct can_priv {scalar_t__ bittiming_const; } ;
struct can_ctrlmode {int dummy; } ;
struct can_clock {int dummy; } ;
struct can_bittiming_const {int dummy; } ;
struct can_bittiming {int dummy; } ;

/* Variables and functions */
 struct can_priv* FUNC0 (struct net_device const*) ; 
 size_t FUNC1 (int) ; 

__attribute__((used)) static size_t FUNC2(const struct net_device *dev)
{
	struct can_priv *priv = FUNC0(dev);
	size_t size;

	size = FUNC1(sizeof(u32));   /* IFLA_CAN_STATE */
	size += sizeof(struct can_ctrlmode);  /* IFLA_CAN_CTRLMODE */
	size += FUNC1(sizeof(u32));  /* IFLA_CAN_RESTART_MS */
	size += sizeof(struct can_bittiming); /* IFLA_CAN_BITTIMING */
	size += sizeof(struct can_clock);     /* IFLA_CAN_CLOCK */
	if (priv->bittiming_const)	      /* IFLA_CAN_BITTIMING_CONST */
		size += sizeof(struct can_bittiming_const);

	return size;
}