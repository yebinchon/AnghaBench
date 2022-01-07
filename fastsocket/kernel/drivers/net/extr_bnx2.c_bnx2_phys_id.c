
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct bnx2 {int dummy; } ;


 int BNX2_EMAC_LED ;
 int BNX2_EMAC_LED_1000MB_OVERRIDE ;
 int BNX2_EMAC_LED_100MB_OVERRIDE ;
 int BNX2_EMAC_LED_10MB_OVERRIDE ;
 int BNX2_EMAC_LED_OVERRIDE ;
 int BNX2_EMAC_LED_TRAFFIC ;
 int BNX2_EMAC_LED_TRAFFIC_OVERRIDE ;
 int BNX2_MISC_CFG ;
 int BNX2_MISC_CFG_LEDMODE_MAC ;
 int BNX2_RD (struct bnx2*,int ) ;
 int BNX2_WR (struct bnx2*,int ,int) ;
 int PCI_D0 ;
 int PCI_D3hot ;
 int bnx2_set_power_state (struct bnx2*,int ) ;
 int current ;
 int msleep_interruptible (int) ;
 struct bnx2* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 scalar_t__ signal_pending (int ) ;

__attribute__((used)) static int
bnx2_phys_id(struct net_device *dev, u32 data)
{
 struct bnx2 *bp = netdev_priv(dev);
 int i;
 u32 save;

 bnx2_set_power_state(bp, PCI_D0);

 if (data == 0)
  data = 2;

 save = BNX2_RD(bp, BNX2_MISC_CFG);
 BNX2_WR(bp, BNX2_MISC_CFG, BNX2_MISC_CFG_LEDMODE_MAC);

 for (i = 0; i < (data * 2); i++) {
  if ((i % 2) == 0) {
   BNX2_WR(bp, BNX2_EMAC_LED, BNX2_EMAC_LED_OVERRIDE);
  }
  else {
   BNX2_WR(bp, BNX2_EMAC_LED, BNX2_EMAC_LED_OVERRIDE |
    BNX2_EMAC_LED_1000MB_OVERRIDE |
    BNX2_EMAC_LED_100MB_OVERRIDE |
    BNX2_EMAC_LED_10MB_OVERRIDE |
    BNX2_EMAC_LED_TRAFFIC_OVERRIDE |
    BNX2_EMAC_LED_TRAFFIC);
  }
  msleep_interruptible(500);
  if (signal_pending(current))
   break;
 }
 BNX2_WR(bp, BNX2_EMAC_LED, 0);
 BNX2_WR(bp, BNX2_MISC_CFG, save);

 if (!netif_running(dev))
  bnx2_set_power_state(bp, PCI_D3hot);

 return 0;
}
