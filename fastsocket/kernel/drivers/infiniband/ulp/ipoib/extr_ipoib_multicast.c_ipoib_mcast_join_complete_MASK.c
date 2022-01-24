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
struct TYPE_3__ {int /*<<< orphan*/  raw; } ;
struct TYPE_4__ {TYPE_1__ mgid; } ;
struct ipoib_mcast {int backoff; int /*<<< orphan*/  flags; TYPE_2__ mcmember; int /*<<< orphan*/  logcount; struct net_device* dev; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  mcast_task; int /*<<< orphan*/  flags; int /*<<< orphan*/  carrier_on_task; struct ipoib_mcast* broadcast; } ;
struct ib_sa_multicast {int /*<<< orphan*/  rec; struct ipoib_mcast* context; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENETRESET ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int IPOIB_MAX_BACKOFF_SECONDS ; 
 int /*<<< orphan*/  IPOIB_MCAST_FLAG_BUSY ; 
 int /*<<< orphan*/  IPOIB_MCAST_RUN ; 
 int /*<<< orphan*/  FUNC0 (struct ipoib_dev_priv*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct ipoib_mcast*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ipoib_dev_priv*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ipoib_workqueue ; 
 int /*<<< orphan*/  mcast_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ipoib_dev_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(int status,
				     struct ib_sa_multicast *multicast)
{
	struct ipoib_mcast *mcast = multicast->context;
	struct net_device *dev = mcast->dev;
	struct ipoib_dev_priv *priv = FUNC5(dev);

	FUNC0(priv, "join completion for %pI6 (status %d)\n",
			mcast->mcmember.mgid.raw, status);

	/* We trap for port events ourselves. */
	if (status == -ENETRESET)
		return 0;

	if (!status)
		status = FUNC1(mcast, &multicast->rec);

	if (!status) {
		mcast->backoff = 1;
		FUNC3(&mcast_mutex);
		if (FUNC11(IPOIB_MCAST_RUN, &priv->flags))
			FUNC6(ipoib_workqueue,
					   &priv->mcast_task, 0);
		FUNC4(&mcast_mutex);

		/*
		 * Defer carrier on work to ipoib_workqueue to avoid a
		 * deadlock on rtnl_lock here.
		 */
		if (mcast == priv->broadcast)
			FUNC7(ipoib_workqueue, &priv->carrier_on_task);

		return 0;
	}

	if (mcast->logcount++ < 20) {
		if (status == -ETIMEDOUT || status == -EAGAIN) {
			FUNC0(priv, "multicast join failed for %pI6, status %d\n",
					mcast->mcmember.mgid.raw, status);
		} else {
			FUNC2(priv, "multicast join failed for %pI6, status %d\n",
				   mcast->mcmember.mgid.raw, status);
		}
	}

	mcast->backoff *= 2;
	if (mcast->backoff > IPOIB_MAX_BACKOFF_SECONDS)
		mcast->backoff = IPOIB_MAX_BACKOFF_SECONDS;

	/* Clear the busy flag so we try again */
	status = FUNC10(IPOIB_MCAST_FLAG_BUSY, &mcast->flags);

	FUNC3(&mcast_mutex);
	FUNC8(&priv->lock);
	if (FUNC11(IPOIB_MCAST_RUN, &priv->flags))
		FUNC6(ipoib_workqueue, &priv->mcast_task,
				   mcast->backoff * HZ);
	FUNC9(&priv->lock);
	FUNC4(&mcast_mutex);

	return status;
}