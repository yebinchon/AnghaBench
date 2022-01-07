
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igb_adapter {int dummy; } ;


 int igb_integrated_phy_loopback (struct igb_adapter*) ;

__attribute__((used)) static int igb_set_phy_loopback(struct igb_adapter *adapter)
{
 return igb_integrated_phy_loopback(adapter);
}
