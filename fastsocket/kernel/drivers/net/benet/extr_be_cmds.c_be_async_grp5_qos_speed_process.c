
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct be_async_event_grp5_qos_link_speed {scalar_t__ physical_port; int qos_link_speed; } ;
struct TYPE_2__ {int link_speed; } ;
struct be_adapter {scalar_t__ port_num; TYPE_1__ phy; } ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static void be_async_grp5_qos_speed_process(struct be_adapter *adapter,
  struct be_async_event_grp5_qos_link_speed *evt)
{
 if (adapter->phy.link_speed >= 0 &&
     evt->physical_port == adapter->port_num)
  adapter->phy.link_speed = le16_to_cpu(evt->qos_link_speed) * 10;
}
