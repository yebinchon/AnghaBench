
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int name; } ;
struct ks8695_priv {int dev; scalar_t__ phyiface_regs; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ KS8695_WMC ;
 int WMC_WDS ;
 int WMC_WLS ;
 int WMC_WSS ;
 int dev_info (int ,char*,int ,...) ;
 struct ks8695_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 scalar_t__ netif_msg_link (struct ks8695_priv*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static irqreturn_t
ks8695_link_irq(int irq, void *dev_id)
{
 struct net_device *ndev = (struct net_device *)dev_id;
 struct ks8695_priv *ksp = netdev_priv(ndev);
 u32 ctrl;

 ctrl = readl(ksp->phyiface_regs + KS8695_WMC);
 if (ctrl & WMC_WLS) {
  netif_carrier_on(ndev);
  if (netif_msg_link(ksp))
   dev_info(ksp->dev,
     "%s: Link is now up (10%sMbps/%s-duplex)\n",
     ndev->name,
     (ctrl & WMC_WSS) ? "0" : "",
     (ctrl & WMC_WDS) ? "Full" : "Half");
 } else {
  netif_carrier_off(ndev);
  if (netif_msg_link(ksp))
   dev_info(ksp->dev, "%s: Link is now down.\n",
     ndev->name);
 }

 return IRQ_HANDLED;
}
