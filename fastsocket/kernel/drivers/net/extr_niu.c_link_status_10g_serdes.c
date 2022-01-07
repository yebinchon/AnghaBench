
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct niu_link_config {int active_duplex; int active_speed; } ;
struct niu {int flags; int lock; struct niu_link_config link_config; } ;


 int DUPLEX_FULL ;
 int DUPLEX_INVALID ;
 int NIU_FLAGS_10G ;
 int SPEED_10000 ;
 int SPEED_INVALID ;
 int XMAC_INTER2 ;
 int XPCS_STATUS (int ) ;
 int link_status_1g_serdes (struct niu*,int*) ;
 int nr64_mac (int ) ;
 int nr64_xpcs (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int link_status_10g_serdes(struct niu *np, int *link_up_p)
{
 unsigned long flags;
 struct niu_link_config *lp = &np->link_config;
 int link_up = 0;
 int link_ok = 1;
 u64 val, val2;
 u16 current_speed;
 u8 current_duplex;

 if (!(np->flags & NIU_FLAGS_10G))
  return link_status_1g_serdes(np, link_up_p);

 current_speed = SPEED_INVALID;
 current_duplex = DUPLEX_INVALID;
 spin_lock_irqsave(&np->lock, flags);

 val = nr64_xpcs(XPCS_STATUS(0));
 val2 = nr64_mac(XMAC_INTER2);
 if (val2 & 0x01000000)
  link_ok = 0;

 if ((val & 0x1000ULL) && link_ok) {
  link_up = 1;
  current_speed = SPEED_10000;
  current_duplex = DUPLEX_FULL;
 }
 lp->active_speed = current_speed;
 lp->active_duplex = current_duplex;
 spin_unlock_irqrestore(&np->lock, flags);
 *link_up_p = link_up;
 return 0;
}
