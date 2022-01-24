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
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_2__ stats; } ;
struct TYPE_3__ {int /*<<< orphan*/  dlid; } ;
struct ipoib_path {int /*<<< orphan*/  queue; scalar_t__ query; scalar_t__ ah; TYPE_1__ pathrec; int /*<<< orphan*/  valid; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  lock; } ;
struct ipoib_cb {scalar_t__ hwaddr; } ;

/* Variables and functions */
 scalar_t__ IPOIB_MAX_PATH_REC_QUEUE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct ipoib_path*) ; 
 struct ipoib_path* FUNC2 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct ipoib_dev_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,struct sk_buff*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct ipoib_dev_priv* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,struct ipoib_path*) ; 
 struct ipoib_path* FUNC10 (struct net_device*,scalar_t__) ; 
 scalar_t__ FUNC11 (struct net_device*,struct ipoib_path*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC15(struct sk_buff *skb, struct net_device *dev,
			     struct ipoib_cb *cb)
{
	struct ipoib_dev_priv *priv = FUNC8(dev);
	struct ipoib_path *path;
	unsigned long flags;

	FUNC13(&priv->lock, flags);

	path = FUNC2(dev, cb->hwaddr + 4);
	if (!path || !path->valid) {
		int new_path = 0;

		if (!path) {
			path = FUNC10(dev, cb->hwaddr + 4);
			new_path = 1;
		}
		if (path) {
			FUNC3(&path->queue, skb);

			if (!path->query && FUNC11(dev, path)) {
				FUNC14(&priv->lock, flags);
				if (new_path)
					FUNC9(dev, path);
				return;
			} else
				FUNC1(dev, path);
		} else {
			++dev->stats.tx_dropped;
			FUNC5(skb);
		}

		FUNC14(&priv->lock, flags);
		return;
	}

	if (path->ah) {
		FUNC6(priv, "Send unicast ARP to %04x\n",
			  FUNC4(path->pathrec.dlid));

		FUNC14(&priv->lock, flags);
		FUNC7(dev, skb, path->ah, FUNC0(cb->hwaddr));
		return;
	} else if ((path->query || !FUNC11(dev, path)) &&
		   FUNC12(&path->queue) < IPOIB_MAX_PATH_REC_QUEUE) {
		FUNC3(&path->queue, skb);
	} else {
		++dev->stats.tx_dropped;
		FUNC5(skb);
	}

	FUNC14(&priv->lock, flags);
}