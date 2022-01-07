
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bdx_priv {TYPE_1__* ndev; int rxf_fifo0; } ;
struct TYPE_2__ {int name; } ;


 int DBG (char*) ;
 int ERR (char*,int ) ;
 int IR_LNKCHG0 ;
 int IR_PCIE_LINK ;
 int IR_PCIE_TOUT ;
 int IR_RX_FREE_0 ;
 int bdx_link_changed (struct bdx_priv*) ;
 int bdx_rx_alloc_skbs (struct bdx_priv*,int *) ;

__attribute__((used)) static void bdx_isr_extra(struct bdx_priv *priv, u32 isr)
{
 if (isr & IR_RX_FREE_0) {
  bdx_rx_alloc_skbs(priv, &priv->rxf_fifo0);
  DBG("RX_FREE_0\n");
 }

 if (isr & IR_LNKCHG0)
  bdx_link_changed(priv);

 if (isr & IR_PCIE_LINK)
  ERR("%s: PCI-E Link Fault\n", priv->ndev->name);

 if (isr & IR_PCIE_TOUT)
  ERR("%s: PCI-E Time Out\n", priv->ndev->name);

}
