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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct ipoib_path {int /*<<< orphan*/  query; TYPE_2__* ah; int /*<<< orphan*/  neigh_list; } ;
struct ipoib_neigh {int /*<<< orphan*/  queue; TYPE_2__* ah; int /*<<< orphan*/  daddr; int /*<<< orphan*/  list; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 scalar_t__ IPOIB_MAX_PATH_REC_QUEUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct ipoib_path*) ; 
 struct ipoib_path* FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,struct ipoib_path*,struct ipoib_neigh*) ; 
 scalar_t__ FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ipoib_neigh*) ; 
 int /*<<< orphan*/  FUNC8 (struct ipoib_neigh*,int /*<<< orphan*/ ) ; 
 struct ipoib_neigh* FUNC9 (int /*<<< orphan*/ *,struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct ipoib_neigh*) ; 
 int /*<<< orphan*/  FUNC11 (struct ipoib_neigh*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,struct sk_buff*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ipoib_dev_priv*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ipoib_dev_priv* FUNC16 (struct net_device*) ; 
 struct ipoib_path* FUNC17 (struct net_device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (struct net_device*,struct ipoib_path*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC22(struct sk_buff *skb, u8 *daddr,
			   struct net_device *dev)
{
	struct ipoib_dev_priv *priv = FUNC16(dev);
	struct ipoib_path *path;
	struct ipoib_neigh *neigh;
	unsigned long flags;

	FUNC20(&priv->lock, flags);
	neigh = FUNC9(daddr, dev);
	if (!neigh) {
		FUNC21(&priv->lock, flags);
		++dev->stats.tx_dropped;
		FUNC4(skb);
		return;
	}

	path = FUNC2(dev, daddr + 4);
	if (!path) {
		path = FUNC17(dev, daddr + 4);
		if (!path)
			goto err_path;

		FUNC1(dev, path);
	}

	FUNC15(&neigh->list, &path->neigh_list);

	if (path->ah) {
		FUNC14(&path->ah->ref);
		neigh->ah = path->ah;

		if (FUNC6(dev, neigh->daddr)) {
			if (!FUNC7(neigh))
				FUNC8(neigh, FUNC5(dev, path, neigh));
			if (!FUNC7(neigh)) {
				FUNC10(neigh);
				goto err_drop;
			}
			if (FUNC19(&neigh->queue) < IPOIB_MAX_PATH_REC_QUEUE)
				FUNC3(&neigh->queue, skb);
			else {
				FUNC13(priv, "queue length limit %d. Packet drop.\n",
					   FUNC19(&neigh->queue));
				goto err_drop;
			}
		} else {
			FUNC21(&priv->lock, flags);
			FUNC12(dev, skb, path->ah, FUNC0(daddr));
			FUNC11(neigh);
			return;
		}
	} else {
		neigh->ah  = NULL;

		if (!path->query && FUNC18(dev, path))
			goto err_path;

		FUNC3(&neigh->queue, skb);
	}

	FUNC21(&priv->lock, flags);
	FUNC11(neigh);
	return;

err_path:
	FUNC10(neigh);
err_drop:
	++dev->stats.tx_dropped;
	FUNC4(skb);

	FUNC21(&priv->lock, flags);
	FUNC11(neigh);
}