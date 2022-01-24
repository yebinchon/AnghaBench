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
struct uml_net_private {int /*<<< orphan*/  user; } ;
struct slip_data {int dummy; } ;
struct sk_buff {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct slip_data*) ; 

__attribute__((used)) static int FUNC2(int fd, struct sk_buff *skb, struct uml_net_private *lp)
{
	return FUNC1(fd, FUNC0(skb), skb->dev->mtu,
			      (struct slip_data *) &lp->user);
}