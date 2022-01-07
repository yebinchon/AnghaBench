
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct stmmac_priv {unsigned int flow_ctrl; unsigned int pause; int oldduplex; int speed; int oldlink; int lock; int bsp_priv; int (* fix_mac_speed ) (int ,int) ;TYPE_4__* mac_type; int is_gmac; struct phy_device* phydev; } ;
struct phy_device {int duplex; int speed; scalar_t__ pause; scalar_t__ link; int addr; } ;
struct net_device {unsigned long base_addr; int name; } ;
struct TYPE_6__ {int port; int speed; int duplex; } ;
struct TYPE_7__ {TYPE_2__ link; } ;
struct TYPE_8__ {TYPE_3__ hw; TYPE_1__* ops; } ;
struct TYPE_5__ {int (* flow_ctrl ) (unsigned long,int,unsigned int,unsigned int) ;} ;


 int DBG (int ,int ,char*,...) ;
 int DEBUG ;
 scalar_t__ MAC_CTRL_REG ;
 int SPEED_100 ;
 int likely (int ) ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_link (struct stmmac_priv*) ;
 int phy_print_status (struct phy_device*) ;
 int pr_warning (char*,int ,int) ;
 int probe ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (unsigned long,int,unsigned int,unsigned int) ;
 int stub2 (int ,int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void stmmac_adjust_link(struct net_device *dev)
{
 struct stmmac_priv *priv = netdev_priv(dev);
 struct phy_device *phydev = priv->phydev;
 unsigned long ioaddr = dev->base_addr;
 unsigned long flags;
 int new_state = 0;
 unsigned int fc = priv->flow_ctrl, pause_time = priv->pause;

 if (phydev == ((void*)0))
  return;

 DBG(probe, DEBUG, "stmmac_adjust_link: called.  address %d link %d\n",
     phydev->addr, phydev->link);

 spin_lock_irqsave(&priv->lock, flags);
 if (phydev->link) {
  u32 ctrl = readl(ioaddr + MAC_CTRL_REG);



  if (phydev->duplex != priv->oldduplex) {
   new_state = 1;
   if (!(phydev->duplex))
    ctrl &= ~priv->mac_type->hw.link.duplex;
   else
    ctrl |= priv->mac_type->hw.link.duplex;
   priv->oldduplex = phydev->duplex;
  }

  if (phydev->pause)
   priv->mac_type->ops->flow_ctrl(ioaddr, phydev->duplex,
             fc, pause_time);

  if (phydev->speed != priv->speed) {
   new_state = 1;
   switch (phydev->speed) {
   case 1000:
    if (likely(priv->is_gmac))
     ctrl &= ~priv->mac_type->hw.link.port;
    break;
   case 100:
   case 10:
    if (priv->is_gmac) {
     ctrl |= priv->mac_type->hw.link.port;
     if (phydev->speed == SPEED_100) {
      ctrl |=
          priv->mac_type->hw.link.
          speed;
     } else {
      ctrl &=
          ~(priv->mac_type->hw.
            link.speed);
     }
    } else {
     ctrl &= ~priv->mac_type->hw.link.port;
    }
    priv->fix_mac_speed(priv->bsp_priv,
          phydev->speed);
    break;
   default:
    if (netif_msg_link(priv))
     pr_warning("%s: Speed (%d) is not 10"
           " or 100!\n", dev->name, phydev->speed);
    break;
   }

   priv->speed = phydev->speed;
  }

  writel(ctrl, ioaddr + MAC_CTRL_REG);

  if (!priv->oldlink) {
   new_state = 1;
   priv->oldlink = 1;
  }
 } else if (priv->oldlink) {
  new_state = 1;
  priv->oldlink = 0;
  priv->speed = 0;
  priv->oldduplex = -1;
 }

 if (new_state && netif_msg_link(priv))
  phy_print_status(phydev);

 spin_unlock_irqrestore(&priv->lock, flags);

 DBG(probe, DEBUG, "stmmac_adjust_link: exiting\n");
}
