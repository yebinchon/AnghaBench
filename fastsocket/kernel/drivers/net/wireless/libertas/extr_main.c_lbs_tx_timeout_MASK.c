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
struct net_device {int /*<<< orphan*/  trans_start; struct lbs_private* ml_priv; } ;
struct lbs_private {scalar_t__ currenttxskb; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_802_11_RSSI ; 
 int /*<<< orphan*/  LBS_DEB_TX ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct lbs_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct lbs_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{
	struct lbs_private *priv = dev->ml_priv;

	FUNC0(LBS_DEB_TX);

	FUNC3("tx watch dog timeout\n");

	dev->trans_start = jiffies;

	if (priv->currenttxskb)
		FUNC5(priv, 0);

	/* XX: Shouldn't we also call into the hw-specific driver
	   to kick it somehow? */
	FUNC2(priv);

	/* More often than not, this actually happens because the
	   firmware has crapped itself -- rather than just a very
	   busy medium. So send a harmless command, and if/when
	   _that_ times out, we'll kick it in the head. */
	FUNC4(priv, CMD_802_11_RSSI, 0,
				     0, 0, NULL);

	FUNC1(LBS_DEB_TX);
}