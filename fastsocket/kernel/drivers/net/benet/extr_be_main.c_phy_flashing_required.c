
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ phy_type; scalar_t__ interface_type; } ;
struct be_adapter {TYPE_1__ phy; } ;


 scalar_t__ PHY_TYPE_BASET_10GB ;
 scalar_t__ TN_8022 ;

__attribute__((used)) static bool phy_flashing_required(struct be_adapter *adapter)
{
 return (adapter->phy.phy_type == TN_8022 &&
  adapter->phy.interface_type == PHY_TYPE_BASET_10GB);
}
