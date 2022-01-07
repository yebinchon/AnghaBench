
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stmmac_priv {void* tx_coe; TYPE_3__* dev; TYPE_2__* mac_type; int is_gmac; } ;
struct TYPE_6__ {scalar_t__ mtu; int base_addr; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* dma_mode ) (int ,scalar_t__,scalar_t__) ;} ;


 scalar_t__ ETH_DATA_LEN ;
 void* HW_CSUM ;
 void* NO_HW_CSUM ;
 scalar_t__ SF_DMA_MODE ;
 int stub1 (int ,scalar_t__,scalar_t__) ;
 int stub2 (int ,scalar_t__,scalar_t__) ;
 int stub3 (int ,scalar_t__,scalar_t__) ;
 scalar_t__ tc ;
 void* tx_coe ;

__attribute__((used)) static void stmmac_dma_operation_mode(struct stmmac_priv *priv)
{
 if (!priv->is_gmac) {

  priv->mac_type->ops->dma_mode(priv->dev->base_addr, tc, 0);
  priv->tx_coe = NO_HW_CSUM;
 } else {
  if ((priv->dev->mtu <= ETH_DATA_LEN) && (tx_coe)) {
   priv->mac_type->ops->dma_mode(priv->dev->base_addr,
            SF_DMA_MODE, SF_DMA_MODE);
   tc = SF_DMA_MODE;
   priv->tx_coe = HW_CSUM;
  } else {

   priv->mac_type->ops->dma_mode(priv->dev->base_addr, tc,
            SF_DMA_MODE);
   priv->tx_coe = NO_HW_CSUM;
  }
 }
 tx_coe = priv->tx_coe;

 return;
}
