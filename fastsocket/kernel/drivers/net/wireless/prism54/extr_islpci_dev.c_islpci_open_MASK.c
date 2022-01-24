#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct net_device {int dummy; } ;
struct TYPE_5__ {scalar_t__ iw_mode; } ;
typedef  TYPE_1__ islpci_private ;

/* Variables and functions */
 scalar_t__ IW_MODE_ADHOC ; 
 scalar_t__ IW_MODE_INFRA ; 
 int FUNC0 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC6(struct net_device *ndev)
{
	u32 rc;
	islpci_private *priv = FUNC1(ndev);

	/* reset data structures, upload firmware and reset device */
	rc = FUNC0(priv,1);
	if (rc) {
		FUNC5(priv);
		return rc; /* Returns informative message */
	}

	FUNC4(ndev);

	/* Turn off carrier if in STA or Ad-hoc mode. It will be turned on
	 * once the firmware receives a trap of being associated
	 * (GEN_OID_LINKSTATE). In other modes (AP or WDS or monitor) we
	 * should just leave the carrier on as its expected the firmware
	 * won't send us a trigger. */
	if (priv->iw_mode == IW_MODE_INFRA || priv->iw_mode == IW_MODE_ADHOC)
		FUNC2(ndev);
	else
		FUNC3(ndev);

	return 0;
}