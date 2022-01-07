
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ks8695_priv {int rx_irq; int tx_irq; int link_irq; scalar_t__ tx_ring_used; scalar_t__ tx_ring_next_slot; scalar_t__ next_rx_desc_read; int ndev; int link_irq_name; int tx_irq_name; int rx_irq_name; scalar_t__ tx_ring_dma; scalar_t__ rx_ring_dma; } ;


 int DRXC_RE ;
 int DTXC_TE ;
 int KS8695_DRSC ;
 int KS8695_DRXC ;
 int KS8695_DTXC ;
 int KS8695_RDLB ;
 int KS8695_TDLB ;
 int ks8695_link_irq ;
 int ks8695_readreg (struct ks8695_priv*,int ) ;
 int ks8695_refill_rxbuffers (struct ks8695_priv*) ;
 int ks8695_rx_irq ;
 int ks8695_setup_irq (int,int ,int ,int ) ;
 int ks8695_tx_irq ;
 int ks8695_writereg (struct ks8695_priv*,int ,int) ;

__attribute__((used)) static int
ks8695_init_net(struct ks8695_priv *ksp)
{
 int ret;
 u32 ctrl;

 ks8695_refill_rxbuffers(ksp);


 ks8695_writereg(ksp, KS8695_RDLB, (u32) ksp->rx_ring_dma);
 ks8695_writereg(ksp, KS8695_TDLB, (u32) ksp->tx_ring_dma);


 ret = ks8695_setup_irq(ksp->rx_irq, ksp->rx_irq_name,
          ks8695_rx_irq, ksp->ndev);
 if (ret)
  return ret;
 ret = ks8695_setup_irq(ksp->tx_irq, ksp->tx_irq_name,
          ks8695_tx_irq, ksp->ndev);
 if (ret)
  return ret;
 if (ksp->link_irq != -1) {
  ret = ks8695_setup_irq(ksp->link_irq, ksp->link_irq_name,
           ks8695_link_irq, ksp->ndev);
  if (ret)
   return ret;
 }


 ksp->next_rx_desc_read = 0;
 ksp->tx_ring_next_slot = 0;
 ksp->tx_ring_used = 0;


 ctrl = ks8695_readreg(ksp, KS8695_DTXC);

 ks8695_writereg(ksp, KS8695_DTXC, ctrl | DTXC_TE);


 ctrl = ks8695_readreg(ksp, KS8695_DRXC);

 ks8695_writereg(ksp, KS8695_DRXC, ctrl | DRXC_RE);

 ks8695_writereg(ksp, KS8695_DRSC, 0);


 return 0;
}
