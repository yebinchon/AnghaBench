
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DM365_EMAC_COL ;
 int DM365_EMAC_CRS ;
 int DM365_EMAC_MDCLK ;
 int DM365_EMAC_MDIO ;
 int DM365_EMAC_RXD0 ;
 int DM365_EMAC_RXD1 ;
 int DM365_EMAC_RXD2 ;
 int DM365_EMAC_RXD3 ;
 int DM365_EMAC_RX_CLK ;
 int DM365_EMAC_RX_DV ;
 int DM365_EMAC_RX_ER ;
 int DM365_EMAC_TXD0 ;
 int DM365_EMAC_TXD1 ;
 int DM365_EMAC_TXD2 ;
 int DM365_EMAC_TXD3 ;
 int DM365_EMAC_TX_CLK ;
 int DM365_EMAC_TX_EN ;
 int DM365_INT_EMAC_MISCPULSE ;
 int DM365_INT_EMAC_RXPULSE ;
 int DM365_INT_EMAC_RXTHRESH ;
 int DM365_INT_EMAC_TXPULSE ;
 int davinci_cfg_reg (int ) ;

__attribute__((used)) static void dm365evm_emac_configure(void)
{





 davinci_cfg_reg(DM365_EMAC_TX_EN);
 davinci_cfg_reg(DM365_EMAC_TX_CLK);
 davinci_cfg_reg(DM365_EMAC_COL);
 davinci_cfg_reg(DM365_EMAC_TXD3);
 davinci_cfg_reg(DM365_EMAC_TXD2);
 davinci_cfg_reg(DM365_EMAC_TXD1);
 davinci_cfg_reg(DM365_EMAC_TXD0);
 davinci_cfg_reg(DM365_EMAC_RXD3);
 davinci_cfg_reg(DM365_EMAC_RXD2);
 davinci_cfg_reg(DM365_EMAC_RXD1);
 davinci_cfg_reg(DM365_EMAC_RXD0);
 davinci_cfg_reg(DM365_EMAC_RX_CLK);
 davinci_cfg_reg(DM365_EMAC_RX_DV);
 davinci_cfg_reg(DM365_EMAC_RX_ER);
 davinci_cfg_reg(DM365_EMAC_CRS);
 davinci_cfg_reg(DM365_EMAC_MDIO);
 davinci_cfg_reg(DM365_EMAC_MDCLK);






 davinci_cfg_reg(DM365_INT_EMAC_RXTHRESH);
 davinci_cfg_reg(DM365_INT_EMAC_RXPULSE);
 davinci_cfg_reg(DM365_INT_EMAC_TXPULSE);
 davinci_cfg_reg(DM365_INT_EMAC_MISCPULSE);
}
