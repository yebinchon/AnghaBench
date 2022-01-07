
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct usbnet {int dummy; } ;


 int AFC_CFG ;
 scalar_t__ DUPLEX_FULL ;
 int FLOW ;
 scalar_t__ FLOW_CTRL_RX ;
 scalar_t__ FLOW_CTRL_TX ;
 int devdbg (struct usbnet*,char*,...) ;
 int devwarn (struct usbnet*,char*) ;
 scalar_t__ mii_resolve_flowctrl_fdx (int ,int ) ;
 scalar_t__ netif_msg_link (struct usbnet*) ;
 int smsc95xx_read_reg (struct usbnet*,int ,int*) ;
 int smsc95xx_write_reg (struct usbnet*,int ,int) ;

__attribute__((used)) static void smsc95xx_phy_update_flowcontrol(struct usbnet *dev, u8 duplex,
         u16 lcladv, u16 rmtadv)
{
 u32 flow, afc_cfg = 0;

 int ret = smsc95xx_read_reg(dev, AFC_CFG, &afc_cfg);
 if (ret < 0) {
  devwarn(dev, "error reading AFC_CFG");
  return;
 }

 if (duplex == DUPLEX_FULL) {
  u8 cap = mii_resolve_flowctrl_fdx(lcladv, rmtadv);

  if (cap & FLOW_CTRL_RX)
   flow = 0xFFFF0002;
  else
   flow = 0;

  if (cap & FLOW_CTRL_TX)
   afc_cfg |= 0xF;
  else
   afc_cfg &= ~0xF;

  if (netif_msg_link(dev))
   devdbg(dev, "rx pause %s, tx pause %s",
    (cap & FLOW_CTRL_RX ? "enabled" : "disabled"),
    (cap & FLOW_CTRL_TX ? "enabled" : "disabled"));
 } else {
  if (netif_msg_link(dev))
   devdbg(dev, "half duplex");
  flow = 0;
  afc_cfg |= 0xF;
 }

 smsc95xx_write_reg(dev, FLOW, flow);
 smsc95xx_write_reg(dev, AFC_CFG, afc_cfg);
}
