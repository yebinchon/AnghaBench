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
typedef  int u32 ;
struct vlan_group {int dummy; } ;
struct net_device {int /*<<< orphan*/  mtu; } ;
struct gfar_private {int /*<<< orphan*/  rxlock; TYPE_1__* regs; struct vlan_group* vlgrp; } ;
struct TYPE_2__ {int /*<<< orphan*/  rctrl; int /*<<< orphan*/  tctrl; } ;

/* Variables and functions */
 int RCTRL_PRSDEP_INIT ; 
 int RCTRL_REQ_PARSER ; 
 int RCTRL_VLEX ; 
 int TCTRL_VLINS ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct gfar_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev,
		struct vlan_group *grp)
{
	struct gfar_private *priv = FUNC3(dev);
	unsigned long flags;
	u32 tempval;

	FUNC4(&priv->rxlock, flags);

	priv->vlgrp = grp;

	if (grp) {
		/* Enable VLAN tag insertion */
		tempval = FUNC1(&priv->regs->tctrl);
		tempval |= TCTRL_VLINS;

		FUNC2(&priv->regs->tctrl, tempval);

		/* Enable VLAN tag extraction */
		tempval = FUNC1(&priv->regs->rctrl);
		tempval |= (RCTRL_VLEX | RCTRL_PRSDEP_INIT);
		FUNC2(&priv->regs->rctrl, tempval);
	} else {
		/* Disable VLAN tag insertion */
		tempval = FUNC1(&priv->regs->tctrl);
		tempval &= ~TCTRL_VLINS;
		FUNC2(&priv->regs->tctrl, tempval);

		/* Disable VLAN tag extraction */
		tempval = FUNC1(&priv->regs->rctrl);
		tempval &= ~RCTRL_VLEX;
		/* If parse is no longer required, then disable parser */
		if (tempval & RCTRL_REQ_PARSER)
			tempval |= RCTRL_PRSDEP_INIT;
		else
			tempval &= ~RCTRL_PRSDEP_INIT;
		FUNC2(&priv->regs->rctrl, tempval);
	}

	FUNC0(dev, dev->mtu);

	FUNC5(&priv->rxlock, flags);
}