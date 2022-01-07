
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct skge_port {int port; scalar_t__ flow_status; struct skge_hw* hw; } ;
struct skge_hw {int dummy; } ;


 scalar_t__ FLOW_STAT_REM_SEND ;
 int GM_GPCR_RX_ENA ;
 int GM_GPCR_TX_ENA ;
 int GM_GP_CTRL ;
 int PHY_MARV_AUNE_ADV ;
 int PHY_M_AN_ASP ;
 int gm_phy_read (struct skge_hw*,int,int ) ;
 int gm_phy_write (struct skge_hw*,int,int ,int) ;
 int gma_read16 (struct skge_hw*,int,int ) ;
 int gma_write16 (struct skge_hw*,int,int ,int) ;
 int skge_link_down (struct skge_port*) ;
 int yukon_init (struct skge_hw*,int) ;

__attribute__((used)) static void yukon_link_down(struct skge_port *skge)
{
 struct skge_hw *hw = skge->hw;
 int port = skge->port;
 u16 ctrl;

 ctrl = gma_read16(hw, port, GM_GP_CTRL);
 ctrl &= ~(GM_GPCR_RX_ENA | GM_GPCR_TX_ENA);
 gma_write16(hw, port, GM_GP_CTRL, ctrl);

 if (skge->flow_status == FLOW_STAT_REM_SEND) {
  ctrl = gm_phy_read(hw, port, PHY_MARV_AUNE_ADV);
  ctrl |= PHY_M_AN_ASP;

  gm_phy_write(hw, port, PHY_MARV_AUNE_ADV, ctrl);
 }

 skge_link_down(skge);

 yukon_init(hw, port);
}
