
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct smsc9420_pdata {struct phy_device* phy_dev; } ;
struct phy_device {scalar_t__ duplex; } ;


 scalar_t__ DUPLEX_FULL ;
 int FLOW ;
 int FLOW_CTRL_RX ;
 int FLOW_CTRL_TX ;
 int LINK ;
 int MII_ADVERTISE ;
 int MII_LPA ;
 int mii_resolve_flowctrl_fdx (int ,int ) ;
 int phy_read (struct phy_device*,int ) ;
 int smsc9420_reg_write (struct smsc9420_pdata*,int ,int) ;
 int smsc_info (int ,char*,...) ;

__attribute__((used)) static void smsc9420_phy_update_flowcontrol(struct smsc9420_pdata *pd)
{
 struct phy_device *phy_dev = pd->phy_dev;
 u32 flow;

 if (phy_dev->duplex == DUPLEX_FULL) {
  u16 lcladv = phy_read(phy_dev, MII_ADVERTISE);
  u16 rmtadv = phy_read(phy_dev, MII_LPA);
  u8 cap = mii_resolve_flowctrl_fdx(lcladv, rmtadv);

  if (cap & FLOW_CTRL_RX)
   flow = 0xFFFF0002;
  else
   flow = 0;

  smsc_info(LINK, "rx pause %s, tx pause %s",
   (cap & FLOW_CTRL_RX ? "enabled" : "disabled"),
   (cap & FLOW_CTRL_TX ? "enabled" : "disabled"));
 } else {
  smsc_info(LINK, "half duplex");
  flow = 0;
 }

 smsc9420_reg_write(pd, FLOW, flow);
}
