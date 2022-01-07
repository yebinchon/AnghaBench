
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct skge_port {int port; scalar_t__ autoneg; int advertising; size_t flow_control; scalar_t__ duplex; int link_timer; struct skge_hw* hw; } ;
struct skge_hw {int dummy; } ;


 int ADVERTISED_1000baseT_Full ;
 int ADVERTISED_1000baseT_Half ;
 scalar_t__ AUTONEG_ENABLE ;
 scalar_t__ DUPLEX_FULL ;
 scalar_t__ LINK_HZ ;
 int PHY_CT_ANE ;
 int PHY_CT_DUP_MD ;
 int PHY_CT_RE_CFG ;
 int PHY_XMAC_AUNE_ADV ;
 int PHY_XMAC_CTRL ;
 int PHY_X_AN_FD ;
 int PHY_X_AN_HD ;
 int* fiber_pause_map ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int xm_phy_write (struct skge_hw*,int,int ,int) ;

__attribute__((used)) static void xm_phy_init(struct skge_port *skge)
{
 struct skge_hw *hw = skge->hw;
 int port = skge->port;
 u16 ctrl = 0;

 if (skge->autoneg == AUTONEG_ENABLE) {
  if (skge->advertising & ADVERTISED_1000baseT_Half)
   ctrl |= PHY_X_AN_HD;
  if (skge->advertising & ADVERTISED_1000baseT_Full)
   ctrl |= PHY_X_AN_FD;

  ctrl |= fiber_pause_map[skge->flow_control];

  xm_phy_write(hw, port, PHY_XMAC_AUNE_ADV, ctrl);


  ctrl = PHY_CT_ANE | PHY_CT_RE_CFG;
 } else {

  if (skge->duplex == DUPLEX_FULL)
   ctrl |= PHY_CT_DUP_MD;




 }

 xm_phy_write(hw, port, PHY_XMAC_CTRL, ctrl);


 mod_timer(&skge->link_timer, jiffies + LINK_HZ);
}
