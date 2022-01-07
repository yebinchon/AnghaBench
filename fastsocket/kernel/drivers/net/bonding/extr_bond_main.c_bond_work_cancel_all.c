
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mode; scalar_t__ arp_interval; scalar_t__ miimon; } ;
struct bonding {int kill_timers; int mcast_work; int ad_work; TYPE_1__ params; int alb_work; int arp_work; int mii_work; int lock; } ;


 scalar_t__ BOND_MODE_8023AD ;
 scalar_t__ BOND_MODE_ALB ;
 int cancel_delayed_work (int *) ;
 scalar_t__ delayed_work_pending (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void bond_work_cancel_all(struct bonding *bond)
{
 write_lock_bh(&bond->lock);
 bond->kill_timers = 1;
 write_unlock_bh(&bond->lock);

 if (bond->params.miimon && delayed_work_pending(&bond->mii_work))
  cancel_delayed_work(&bond->mii_work);

 if (bond->params.arp_interval && delayed_work_pending(&bond->arp_work))
  cancel_delayed_work(&bond->arp_work);

 if (bond->params.mode == BOND_MODE_ALB &&
     delayed_work_pending(&bond->alb_work))
  cancel_delayed_work(&bond->alb_work);

 if (bond->params.mode == BOND_MODE_8023AD &&
     delayed_work_pending(&bond->ad_work))
  cancel_delayed_work(&bond->ad_work);

 if (delayed_work_pending(&bond->mcast_work))
  cancel_delayed_work(&bond->mcast_work);
}
