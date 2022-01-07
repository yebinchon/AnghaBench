
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlx4_en_priv {TYPE_1__* prof; scalar_t__ rx_skb_size; int port; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int dev; } ;
struct ieee_pfc {scalar_t__ pfc_en; int delay; int mbc; int pfc_cap; } ;
struct TYPE_2__ {int rx_pause; int tx_pause; scalar_t__ rx_ppp; scalar_t__ tx_ppp; } ;


 int DRV ;
 scalar_t__ ETH_FCS_LEN ;
 int en_dbg (int ,struct mlx4_en_priv*,char*,int ,scalar_t__,int ,int ) ;
 int en_err (struct mlx4_en_priv*,char*) ;
 int mlx4_SET_PORT_general (int ,int ,scalar_t__,int,scalar_t__,int,scalar_t__) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx4_en_dcbnl_ieee_setpfc(struct net_device *dev,
  struct ieee_pfc *pfc)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct mlx4_en_dev *mdev = priv->mdev;
 int err;

 en_dbg(DRV, priv, "cap: 0x%x en: 0x%x mbc: 0x%x delay: %d\n",
   pfc->pfc_cap,
   pfc->pfc_en,
   pfc->mbc,
   pfc->delay);

 priv->prof->rx_pause = priv->prof->tx_pause = !!pfc->pfc_en;
 priv->prof->rx_ppp = priv->prof->tx_ppp = pfc->pfc_en;

 err = mlx4_SET_PORT_general(mdev->dev, priv->port,
        priv->rx_skb_size + ETH_FCS_LEN,
        priv->prof->tx_pause,
        priv->prof->tx_ppp,
        priv->prof->rx_pause,
        priv->prof->rx_ppp);
 if (err)
  en_err(priv, "Failed setting pause params\n");

 return err;
}
