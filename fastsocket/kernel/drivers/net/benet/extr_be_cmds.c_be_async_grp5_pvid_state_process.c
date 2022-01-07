
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_async_event_grp5_pvid_state {int tag; scalar_t__ enabled; } ;
struct be_adapter {int pvid; } ;


 int VLAN_VID_MASK ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static void be_async_grp5_pvid_state_process(struct be_adapter *adapter,
  struct be_async_event_grp5_pvid_state *evt)
{
 if (evt->enabled)
  adapter->pvid = le16_to_cpu(evt->tag) & VLAN_VID_MASK;
 else
  adapter->pvid = 0;
}
