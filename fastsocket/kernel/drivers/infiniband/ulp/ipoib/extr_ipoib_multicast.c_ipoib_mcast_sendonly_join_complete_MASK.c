#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_3__ stats; } ;
struct TYPE_4__ {int /*<<< orphan*/  raw; } ;
struct TYPE_5__ {TYPE_1__ mgid; } ;
struct ipoib_mcast {int /*<<< orphan*/  flags; int /*<<< orphan*/  pkt_queue; TYPE_2__ mcmember; int /*<<< orphan*/  logcount; struct net_device* dev; } ;
struct ib_sa_multicast {int /*<<< orphan*/  rec; struct ipoib_mcast* context; } ;

/* Variables and functions */
 int ENETRESET ; 
 int /*<<< orphan*/  IPOIB_MCAST_FLAG_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct ipoib_mcast*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(int status,
				   struct ib_sa_multicast *multicast)
{
	struct ipoib_mcast *mcast = multicast->context;
	struct net_device *dev = mcast->dev;

	/* We trap for port events ourselves. */
	if (status == -ENETRESET)
		return 0;

	if (!status)
		status = FUNC2(mcast, &multicast->rec);

	if (status) {
		if (mcast->logcount++ < 20)
			FUNC1(FUNC3(dev), "multicast join failed for %pI6, status %d\n",
					mcast->mcmember.mgid.raw, status);

		/* Flush out any queued packets */
		FUNC4(dev);
		while (!FUNC7(&mcast->pkt_queue)) {
			++dev->stats.tx_dropped;
			FUNC0(FUNC6(&mcast->pkt_queue));
		}
		FUNC5(dev);

		/* Clear the busy flag so we try again */
		status = FUNC8(IPOIB_MCAST_FLAG_BUSY,
					    &mcast->flags);
	}
	return status;
}