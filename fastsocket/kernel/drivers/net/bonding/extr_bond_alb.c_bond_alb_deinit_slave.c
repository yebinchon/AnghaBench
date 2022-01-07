
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slave {int dummy; } ;
struct TYPE_2__ {int * next_rx_slave; scalar_t__ rlb_enabled; } ;
struct bonding {int slave_cnt; TYPE_1__ alb_info; } ;


 int alb_change_hw_addr_on_detach (struct bonding*,struct slave*) ;
 int rlb_clear_slave (struct bonding*,struct slave*) ;
 int tlb_clear_slave (struct bonding*,struct slave*,int ) ;

void bond_alb_deinit_slave(struct bonding *bond, struct slave *slave)
{
 if (bond->slave_cnt > 1) {
  alb_change_hw_addr_on_detach(bond, slave);
 }

 tlb_clear_slave(bond, slave, 0);

 if (bond->alb_info.rlb_enabled) {
  bond->alb_info.next_rx_slave = ((void*)0);
  rlb_clear_slave(bond, slave);
 }
}
