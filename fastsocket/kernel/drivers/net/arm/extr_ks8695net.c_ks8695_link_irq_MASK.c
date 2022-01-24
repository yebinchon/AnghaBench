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
typedef  int u32 ;
struct net_device {int /*<<< orphan*/  name; } ;
struct ks8695_priv {int /*<<< orphan*/  dev; scalar_t__ phyiface_regs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ KS8695_WMC ; 
 int WMC_WDS ; 
 int WMC_WLS ; 
 int WMC_WSS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 struct ks8695_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct ks8695_priv*) ; 
 int FUNC5 (scalar_t__) ; 

__attribute__((used)) static irqreturn_t
FUNC6(int irq, void *dev_id)
{
	struct net_device *ndev = (struct net_device *)dev_id;
	struct ks8695_priv *ksp = FUNC1(ndev);
	u32 ctrl;

	ctrl = FUNC5(ksp->phyiface_regs + KS8695_WMC);
	if (ctrl & WMC_WLS) {
		FUNC3(ndev);
		if (FUNC4(ksp))
			FUNC0(ksp->dev,
				 "%s: Link is now up (10%sMbps/%s-duplex)\n",
				 ndev->name,
				 (ctrl & WMC_WSS) ? "0" : "",
				 (ctrl & WMC_WDS) ? "Full" : "Half");
	} else {
		FUNC2(ndev);
		if (FUNC4(ksp))
			FUNC0(ksp->dev, "%s: Link is now down.\n",
				 ndev->name);
	}

	return IRQ_HANDLED;
}