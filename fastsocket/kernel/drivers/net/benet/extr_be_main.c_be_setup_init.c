
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int link_speed; } ;
struct be_adapter {int vlan_prio_bmap; int if_handle; int be3_native; int promiscuous; int cmd_privileges; TYPE_1__ phy; } ;


 int MAX_PRIVILEGES ;
 int MIN_PRIVILEGES ;
 scalar_t__ be_physfn (struct be_adapter*) ;

__attribute__((used)) static void be_setup_init(struct be_adapter *adapter)
{
 adapter->vlan_prio_bmap = 0xff;
 adapter->phy.link_speed = -1;
 adapter->if_handle = -1;
 adapter->be3_native = 0;
 adapter->promiscuous = 0;
 if (be_physfn(adapter))
  adapter->cmd_privileges = MAX_PRIVILEGES;
 else
  adapter->cmd_privileges = MIN_PRIVILEGES;
}
