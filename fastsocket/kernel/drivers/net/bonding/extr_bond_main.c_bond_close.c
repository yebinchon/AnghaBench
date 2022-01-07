
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int mode; scalar_t__ arp_interval; scalar_t__ miimon; scalar_t__ arp_validate; } ;
struct bonding {int kill_timers; int mcast_work; int alb_work; int ad_work; TYPE_1__ params; int arp_work; int mii_work; int lock; scalar_t__ send_unsol_na; scalar_t__ send_grat_arp; } ;





 int bond_alb_deinitialize (struct bonding*) ;
 scalar_t__ bond_is_lb (struct bonding*) ;
 int bond_unregister_arp (struct bonding*) ;
 int bond_unregister_lacpdu (struct bonding*) ;
 int cancel_delayed_work (int *) ;
 scalar_t__ delayed_work_pending (int *) ;
 struct bonding* netdev_priv (struct net_device*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int bond_close(struct net_device *bond_dev)
{
 struct bonding *bond = netdev_priv(bond_dev);

 if (bond->params.mode == 130) {

  bond_unregister_lacpdu(bond);
 }

 if (bond->params.arp_interval && bond->params.arp_validate)
  bond_unregister_arp(bond);

 write_lock_bh(&bond->lock);

 bond->send_grat_arp = 0;
 bond->send_unsol_na = 0;


 bond->kill_timers = 1;

 write_unlock_bh(&bond->lock);

 if (bond->params.miimon) {
  cancel_delayed_work(&bond->mii_work);
 }

 if (bond->params.arp_interval) {
  cancel_delayed_work(&bond->arp_work);
 }

 switch (bond->params.mode) {
 case 130:
  cancel_delayed_work(&bond->ad_work);
  break;
 case 128:
 case 129:
  cancel_delayed_work(&bond->alb_work);
  break;
 default:
  break;
 }

 if (delayed_work_pending(&bond->mcast_work))
  cancel_delayed_work(&bond->mcast_work);

 if (bond_is_lb(bond)) {



  bond_alb_deinitialize(bond);
 }

 return 0;
}
