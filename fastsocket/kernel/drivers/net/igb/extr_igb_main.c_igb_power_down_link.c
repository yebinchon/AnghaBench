
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ media_type; } ;
struct TYPE_5__ {TYPE_1__ phy; } ;
struct igb_adapter {TYPE_2__ hw; } ;


 scalar_t__ e1000_media_type_copper ;
 int igb_power_down_phy_copper_82575 (TYPE_2__*) ;
 int igb_shutdown_serdes_link_82575 (TYPE_2__*) ;

__attribute__((used)) static void igb_power_down_link(struct igb_adapter *adapter)
{
 if (adapter->hw.phy.media_type == e1000_media_type_copper)
  igb_power_down_phy_copper_82575(&adapter->hw);
 else
  igb_shutdown_serdes_link_82575(&adapter->hw);
}
