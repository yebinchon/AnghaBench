
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct niu_link_config {int active_speed; int active_duplex; } ;
struct niu {int lock; int phy_addr; struct niu_link_config link_config; } ;


 int BMSR_LSTATUS ;
 int DUPLEX_FULL ;
 int DUPLEX_INVALID ;
 int EINVAL ;
 int MII_ADVERTISE ;
 int MII_BMSR ;
 int MII_ESTATUS ;
 int MII_LPA ;
 int SPEED_1000 ;
 int SPEED_INVALID ;
 int mii_read (struct niu*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int link_status_1g_rgmii(struct niu *np, int *link_up_p)
{
 struct niu_link_config *lp = &np->link_config;
 u16 current_speed, bmsr;
 unsigned long flags;
 u8 current_duplex;
 int err, link_up;

 link_up = 0;
 current_speed = SPEED_INVALID;
 current_duplex = DUPLEX_INVALID;

 spin_lock_irqsave(&np->lock, flags);

 err = -EINVAL;

 err = mii_read(np, np->phy_addr, MII_BMSR);
 if (err < 0)
  goto out;

 bmsr = err;
 if (bmsr & BMSR_LSTATUS) {
  u16 adv, lpa, common, estat;

  err = mii_read(np, np->phy_addr, MII_ADVERTISE);
  if (err < 0)
   goto out;
  adv = err;

  err = mii_read(np, np->phy_addr, MII_LPA);
  if (err < 0)
   goto out;
  lpa = err;

  common = adv & lpa;

  err = mii_read(np, np->phy_addr, MII_ESTATUS);
  if (err < 0)
   goto out;
  estat = err;
  link_up = 1;
  current_speed = SPEED_1000;
  current_duplex = DUPLEX_FULL;

 }
 lp->active_speed = current_speed;
 lp->active_duplex = current_duplex;
 err = 0;

out:
 spin_unlock_irqrestore(&np->lock, flags);

 *link_up_p = link_up;
 return err;
}
