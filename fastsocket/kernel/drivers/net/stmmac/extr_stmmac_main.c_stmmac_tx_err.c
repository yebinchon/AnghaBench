
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct stmmac_priv {TYPE_4__* dev; scalar_t__ cur_tx; scalar_t__ dirty_tx; int dma_tx_size; int dma_tx; TYPE_2__* mac_type; } ;
struct TYPE_6__ {int tx_errors; } ;
struct TYPE_9__ {TYPE_1__ stats; int base_addr; } ;
struct TYPE_8__ {int (* init_tx_desc ) (int ,int ) ;} ;
struct TYPE_7__ {TYPE_3__* ops; } ;


 int dma_free_tx_skbufs (struct stmmac_priv*) ;
 int netif_stop_queue (TYPE_4__*) ;
 int netif_wake_queue (TYPE_4__*) ;
 int stmmac_dma_start_tx (int ) ;
 int stmmac_dma_stop_tx (int ) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void stmmac_tx_err(struct stmmac_priv *priv)
{
 netif_stop_queue(priv->dev);

 stmmac_dma_stop_tx(priv->dev->base_addr);
 dma_free_tx_skbufs(priv);
 priv->mac_type->ops->init_tx_desc(priv->dma_tx, priv->dma_tx_size);
 priv->dirty_tx = 0;
 priv->cur_tx = 0;
 stmmac_dma_start_tx(priv->dev->base_addr);

 priv->dev->stats.tx_errors++;
 netif_wake_queue(priv->dev);

 return;
}
