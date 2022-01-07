
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {void (* adjust_state ) (struct net_device*) ;int state_queue; } ;


 int HZ ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int phy_state_machine ;
 int schedule_delayed_work (int *,int ) ;

void phy_start_machine(struct phy_device *phydev,
  void (*handler)(struct net_device *))
{
 phydev->adjust_state = handler;

 INIT_DELAYED_WORK(&phydev->state_queue, phy_state_machine);
 schedule_delayed_work(&phydev->state_queue, HZ);
}
