
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ media_type; } ;
struct TYPE_6__ {TYPE_1__ phy; } ;
struct igb_adapter {TYPE_2__ hw; } ;


 scalar_t__ e1000_media_type_copper ;
 int igb_power_up_phy_copper (TYPE_2__*) ;
 int igb_power_up_serdes_link_82575 (TYPE_2__*) ;
 int igb_reset_phy (TYPE_2__*) ;

void igb_power_up_link(struct igb_adapter *adapter)
{
 igb_reset_phy(&adapter->hw);

 if (adapter->hw.phy.media_type == e1000_media_type_copper)
  igb_power_up_phy_copper(&adapter->hw);
 else
  igb_power_up_serdes_link_82575(&adapter->hw);
}
