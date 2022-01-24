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
struct net_device {int dummy; } ;
struct mlx4_en_priv {TYPE_1__* prof; scalar_t__ rx_skb_size; int /*<<< orphan*/  port; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  dev; } ;
struct ieee_pfc {scalar_t__ pfc_en; int /*<<< orphan*/  delay; int /*<<< orphan*/  mbc; int /*<<< orphan*/  pfc_cap; } ;
struct TYPE_2__ {int rx_pause; int tx_pause; scalar_t__ rx_ppp; scalar_t__ tx_ppp; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV ; 
 scalar_t__ ETH_FCS_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_en_priv*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,scalar_t__,int,scalar_t__) ; 
 struct mlx4_en_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
		struct ieee_pfc *pfc)
{
	struct mlx4_en_priv *priv = FUNC3(dev);
	struct mlx4_en_dev *mdev = priv->mdev;
	int err;

	FUNC0(DRV, priv, "cap: 0x%x en: 0x%x mbc: 0x%x delay: %d\n",
			pfc->pfc_cap,
			pfc->pfc_en,
			pfc->mbc,
			pfc->delay);

	priv->prof->rx_pause = priv->prof->tx_pause = !!pfc->pfc_en;
	priv->prof->rx_ppp = priv->prof->tx_ppp = pfc->pfc_en;

	err = FUNC2(mdev->dev, priv->port,
				    priv->rx_skb_size + ETH_FCS_LEN,
				    priv->prof->tx_pause,
				    priv->prof->tx_ppp,
				    priv->prof->rx_pause,
				    priv->prof->rx_ppp);
	if (err)
		FUNC1(priv, "Failed setting pause params\n");

	return err;
}