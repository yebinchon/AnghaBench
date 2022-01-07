
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl8k_rxd_ap {int rx_ctrl; int next_rxd_phys_addr; } ;
typedef int dma_addr_t ;


 int MWL8K_AP_RX_CTRL_OWNED_BY_HOST ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void mwl8k_rxd_ap_init(void *_rxd, dma_addr_t next_dma_addr)
{
 struct mwl8k_rxd_ap *rxd = _rxd;

 rxd->next_rxd_phys_addr = cpu_to_le32(next_dma_addr);
 rxd->rx_ctrl = MWL8K_AP_RX_CTRL_OWNED_BY_HOST;
}
