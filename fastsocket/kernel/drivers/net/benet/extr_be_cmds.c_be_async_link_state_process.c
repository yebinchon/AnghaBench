
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct be_async_event_link_state {int port_link_status; } ;
struct TYPE_2__ {int link_speed; } ;
struct be_adapter {int flags; TYPE_1__ phy; } ;


 int BE_FLAGS_LINK_STATUS_INIT ;
 int LOGICAL_LINK_STATUS_MASK ;
 int be_link_status_update (struct be_adapter*,int) ;
 scalar_t__ lancer_chip (struct be_adapter*) ;

__attribute__((used)) static void be_async_link_state_process(struct be_adapter *adapter,
  struct be_async_event_link_state *evt)
{

 adapter->phy.link_speed = -1;


 if (lancer_chip(adapter) &&
     !(evt->port_link_status & LOGICAL_LINK_STATUS_MASK))
  return;




 if (adapter->flags & BE_FLAGS_LINK_STATUS_INIT)
  be_link_status_update(adapter, evt->port_link_status);
}
