
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct niu_link_config {int active_duplex; int active_speed; } ;
struct niu {int lock; struct niu_link_config link_config; } ;


 int DUPLEX_FULL ;
 int DUPLEX_INVALID ;
 int PCS_MII_STAT ;
 int PCS_MII_STAT_LINK_STATUS ;
 int SPEED_1000 ;
 int SPEED_INVALID ;
 int nr64_pcs (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int link_status_1g_serdes(struct niu *np, int *link_up_p)
{
 struct niu_link_config *lp = &np->link_config;
 int link_up;
 u64 val;
 u16 current_speed;
 unsigned long flags;
 u8 current_duplex;

 link_up = 0;
 current_speed = SPEED_INVALID;
 current_duplex = DUPLEX_INVALID;

 spin_lock_irqsave(&np->lock, flags);

 val = nr64_pcs(PCS_MII_STAT);

 if (val & PCS_MII_STAT_LINK_STATUS) {
  link_up = 1;
  current_speed = SPEED_1000;
  current_duplex = DUPLEX_FULL;
 }

 lp->active_speed = current_speed;
 lp->active_duplex = current_duplex;
 spin_unlock_irqrestore(&np->lock, flags);

 *link_up_p = link_up;
 return 0;
}
