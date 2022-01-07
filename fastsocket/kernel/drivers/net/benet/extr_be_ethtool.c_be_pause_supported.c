
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ interface_type; } ;
struct be_adapter {TYPE_1__ phy; } ;


 scalar_t__ PHY_TYPE_SFP_PLUS_10GB ;
 scalar_t__ PHY_TYPE_XFP_10GB ;

bool be_pause_supported(struct be_adapter *adapter)
{
 return (adapter->phy.interface_type == PHY_TYPE_SFP_PLUS_10GB ||
  adapter->phy.interface_type == PHY_TYPE_XFP_10GB) ?
  0 : 1;
}
