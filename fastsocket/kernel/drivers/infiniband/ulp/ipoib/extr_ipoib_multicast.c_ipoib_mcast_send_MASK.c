#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  union ib_gid {int dummy; } ib_gid ;
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_4__ stats; } ;
struct ipoib_neigh {int /*<<< orphan*/  list; TYPE_5__* ah; } ;
struct TYPE_7__ {int /*<<< orphan*/  raw; } ;
struct TYPE_8__ {TYPE_2__ mgid; } ;
struct ipoib_mcast {TYPE_5__* ah; int /*<<< orphan*/  neigh_list; int /*<<< orphan*/  flags; int /*<<< orphan*/  pkt_queue; int /*<<< orphan*/  list; TYPE_3__ mcmember; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  multicast_list; TYPE_1__* broadcast; int /*<<< orphan*/  flags; } ;
struct TYPE_10__ {int /*<<< orphan*/  ref; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_MULTICAST_QPN ; 
 int /*<<< orphan*/  IPOIB_FLAG_OPER_UP ; 
 scalar_t__ IPOIB_MAX_MCAST_QUEUE ; 
 int /*<<< orphan*/  IPOIB_MCAST_FLAG_ATTACHED ; 
 int /*<<< orphan*/  IPOIB_MCAST_FLAG_BUSY ; 
 int /*<<< orphan*/  IPOIB_MCAST_FLAG_SENDONLY ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct ipoib_mcast*) ; 
 struct ipoib_mcast* FUNC1 (struct net_device*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipoib_dev_priv*,char*,...) ; 
 struct ipoib_mcast* FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ipoib_mcast*) ; 
 struct ipoib_neigh* FUNC6 (int /*<<< orphan*/ *,struct net_device*) ; 
 struct ipoib_neigh* FUNC7 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ipoib_neigh*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,struct sk_buff*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ipoib_dev_priv*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,void*,int) ; 
 struct ipoib_dev_priv* FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC21(struct net_device *dev, u8 *daddr, struct sk_buff *skb)
{
	struct ipoib_dev_priv *priv = FUNC14(dev);
	struct ipoib_mcast *mcast;
	unsigned long flags;
	void *mgid = daddr + 4;

	FUNC18(&priv->lock, flags);

	if (!FUNC20(IPOIB_FLAG_OPER_UP, &priv->flags)		||
	    !priv->broadcast					||
	    !FUNC20(IPOIB_MCAST_FLAG_ATTACHED, &priv->broadcast->flags)) {
		++dev->stats.tx_dropped;
		FUNC2(skb);
		goto unlock;
	}

	mcast = FUNC1(dev, mgid);
	if (!mcast) {
		/* Let's create a new send only group now */
		FUNC3(priv, "setting up send only multicast group for %pI6\n",
				mgid);

		mcast = FUNC4(dev, 0);
		if (!mcast) {
			FUNC10(priv, "unable to allocate memory for "
				   "multicast structure\n");
			++dev->stats.tx_dropped;
			FUNC2(skb);
			goto out;
		}

		FUNC15(IPOIB_MCAST_FLAG_SENDONLY, &mcast->flags);
		FUNC13(mcast->mcmember.mgid.raw, mgid, sizeof (union ib_gid));
		FUNC0(dev, mcast);
		FUNC12(&mcast->list, &priv->multicast_list);
	}

	if (!mcast->ah) {
		if (FUNC16(&mcast->pkt_queue) < IPOIB_MAX_MCAST_QUEUE)
			FUNC17(&mcast->pkt_queue, skb);
		else {
			++dev->stats.tx_dropped;
			FUNC2(skb);
		}

		if (FUNC20(IPOIB_MCAST_FLAG_BUSY, &mcast->flags))
			FUNC3(priv, "no address vector, "
					"but multicast join already started\n");
		else if (FUNC20(IPOIB_MCAST_FLAG_SENDONLY, &mcast->flags))
			FUNC5(mcast);

		/*
		 * If lookup completes between here and out:, don't
		 * want to send packet twice.
		 */
		mcast = NULL;
	}

out:
	if (mcast && mcast->ah) {
		struct ipoib_neigh *neigh;

		FUNC19(&priv->lock, flags);
		neigh = FUNC7(dev, daddr);
		FUNC18(&priv->lock, flags);
		if (!neigh) {
			neigh = FUNC6(daddr, dev);
			if (neigh) {
				FUNC11(&mcast->ah->ref);
				neigh->ah	= mcast->ah;
				FUNC12(&neigh->list, &mcast->neigh_list);
			}
		}

		FUNC19(&priv->lock, flags);
		FUNC9(dev, skb, mcast->ah, IB_MULTICAST_QPN);
		if (neigh)
			FUNC8(neigh);
		return;
	}

unlock:
	FUNC19(&priv->lock, flags);
}