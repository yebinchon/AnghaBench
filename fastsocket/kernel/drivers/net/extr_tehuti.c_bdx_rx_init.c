
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rxf_desc {int dummy; } ;
struct TYPE_8__ {int memsz; scalar_t__ pktsz; } ;
struct TYPE_5__ {TYPE_4__ m; } ;
struct TYPE_7__ {TYPE_4__ m; } ;
struct bdx_priv {TYPE_2__* ndev; TYPE_1__ rxf_fifo0; int rxdb; int rxf_size; int rxd_size; TYPE_3__ rxd_fifo0; } ;
struct TYPE_6__ {int name; scalar_t__ mtu; } ;


 int BDX_DRV_NAME ;
 int ENOMEM ;
 int ENTER ;
 int ERR (char*,int ,int ) ;
 scalar_t__ VLAN_ETH_HLEN ;
 scalar_t__ bdx_fifo_init (struct bdx_priv*,TYPE_4__*,int ,int ,int ,int ,int ) ;
 int bdx_rxdb_create (int) ;
 int regRXD_CFG0_0 ;
 int regRXD_CFG1_0 ;
 int regRXD_RPTR_0 ;
 int regRXD_WPTR_0 ;
 int regRXF_CFG0_0 ;
 int regRXF_CFG1_0 ;
 int regRXF_RPTR_0 ;
 int regRXF_WPTR_0 ;

__attribute__((used)) static int bdx_rx_init(struct bdx_priv *priv)
{
 ENTER;

 if (bdx_fifo_init(priv, &priv->rxd_fifo0.m, priv->rxd_size,
     regRXD_CFG0_0, regRXD_CFG1_0,
     regRXD_RPTR_0, regRXD_WPTR_0))
  goto err_mem;
 if (bdx_fifo_init(priv, &priv->rxf_fifo0.m, priv->rxf_size,
     regRXF_CFG0_0, regRXF_CFG1_0,
     regRXF_RPTR_0, regRXF_WPTR_0))
  goto err_mem;
 if (!
     (priv->rxdb =
      bdx_rxdb_create(priv->rxf_fifo0.m.memsz /
        sizeof(struct rxf_desc))))
  goto err_mem;

 priv->rxf_fifo0.m.pktsz = priv->ndev->mtu + VLAN_ETH_HLEN;
 return 0;

err_mem:
 ERR("%s: %s: Rx init failed\n", BDX_DRV_NAME, priv->ndev->name);
 return -ENOMEM;
}
