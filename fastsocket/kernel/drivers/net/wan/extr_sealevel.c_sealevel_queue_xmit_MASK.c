#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_2__ {int /*<<< orphan*/  chan; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static netdev_tx_t FUNC2(struct sk_buff *skb,
					     struct net_device *d)
{
	return FUNC1(FUNC0(d)->chan, skb);
}