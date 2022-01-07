
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlx4_en_priv {TYPE_1__* prof; } ;
struct ieee_pfc {int pfc_en; int pfc_cap; } ;
struct TYPE_2__ {int tx_ppp; } ;


 int IEEE_8021QAZ_MAX_TCS ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx4_en_dcbnl_ieee_getpfc(struct net_device *dev,
  struct ieee_pfc *pfc)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);

 pfc->pfc_cap = IEEE_8021QAZ_MAX_TCS;
 pfc->pfc_en = priv->prof->tx_ppp;

 return 0;
}
