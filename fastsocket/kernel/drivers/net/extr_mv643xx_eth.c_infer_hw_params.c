
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv643xx_eth_shared_private {int extended_rx_coal_limit; int tx_bw_control; scalar_t__ base; } ;


 scalar_t__ SDMA_CONFIG ;
 int TX_BW_CONTROL_ABSENT ;
 int TX_BW_CONTROL_NEW_LAYOUT ;
 int TX_BW_CONTROL_OLD_LAYOUT ;
 scalar_t__ TX_BW_MTU_MOVED ;
 scalar_t__ TX_BW_RATE ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void infer_hw_params(struct mv643xx_eth_shared_private *msp)
{





 writel(0x02000000, msp->base + 0x0400 + SDMA_CONFIG);
 if (readl(msp->base + 0x0400 + SDMA_CONFIG) & 0x02000000)
  msp->extended_rx_coal_limit = 1;
 else
  msp->extended_rx_coal_limit = 0;






 writel(1, msp->base + 0x0400 + TX_BW_MTU_MOVED);
 if (readl(msp->base + 0x0400 + TX_BW_MTU_MOVED) & 1) {
  msp->tx_bw_control = TX_BW_CONTROL_NEW_LAYOUT;
 } else {
  writel(7, msp->base + 0x0400 + TX_BW_RATE);
  if (readl(msp->base + 0x0400 + TX_BW_RATE) & 7)
   msp->tx_bw_control = TX_BW_CONTROL_OLD_LAYOUT;
  else
   msp->tx_bw_control = TX_BW_CONTROL_ABSENT;
 }
}
