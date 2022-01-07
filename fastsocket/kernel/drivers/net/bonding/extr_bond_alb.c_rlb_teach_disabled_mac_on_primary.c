
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int primary_is_promisc; scalar_t__ rlb_promisc_timeout_counter; } ;
struct bonding {TYPE_2__* curr_active_slave; TYPE_1__ alb_info; } ;
struct TYPE_4__ {int dev; } ;


 int alb_send_learning_packets (TYPE_2__*,int *) ;
 int dev_set_promiscuity (int ,int) ;

__attribute__((used)) static void rlb_teach_disabled_mac_on_primary(struct bonding *bond, u8 addr[])
{
 if (!bond->curr_active_slave) {
  return;
 }

 if (!bond->alb_info.primary_is_promisc) {
  if (!dev_set_promiscuity(bond->curr_active_slave->dev, 1))
   bond->alb_info.primary_is_promisc = 1;
  else
   bond->alb_info.primary_is_promisc = 0;
 }

 bond->alb_info.rlb_promisc_timeout_counter = 0;

 alb_send_learning_packets(bond->curr_active_slave, addr);
}
