#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  raw; } ;
struct TYPE_3__ {int /*<<< orphan*/  mlid; TYPE_2__ mgid; } ;
struct ipoib_mcast {TYPE_1__ mcmember; int /*<<< orphan*/  flags; int /*<<< orphan*/  mc; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  qp; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPOIB_MCAST_FLAG_ATTACHED ; 
 int /*<<< orphan*/  IPOIB_MCAST_FLAG_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipoib_dev_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ipoib_dev_priv*,char*,int) ; 
 struct ipoib_dev_priv* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, struct ipoib_mcast *mcast)
{
	struct ipoib_dev_priv *priv = FUNC5(dev);
	int ret = 0;

	if (FUNC6(IPOIB_MCAST_FLAG_BUSY, &mcast->flags))
		FUNC2(mcast->mc);

	if (FUNC6(IPOIB_MCAST_FLAG_ATTACHED, &mcast->flags)) {
		FUNC3(priv, "leaving MGID %pI6\n",
				mcast->mcmember.mgid.raw);

		/* Remove ourselves from the multicast group */
		ret = FUNC1(priv->qp, &mcast->mcmember.mgid,
				      FUNC0(mcast->mcmember.mlid));
		if (ret)
			FUNC4(priv, "ib_detach_mcast failed (result = %d)\n", ret);
	}

	return 0;
}