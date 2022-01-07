
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct e1000_hw {scalar_t__ media_type; int serdes_has_link; scalar_t__ autoneg; } ;
struct e1000_adapter {struct e1000_hw hw; } ;


 int E1000_STATUS_LU ;
 int STATUS ;
 int e1000_check_for_link (struct e1000_hw*) ;
 scalar_t__ e1000_media_type_internal_serdes ;
 int er32 (int ) ;
 int msleep (int) ;

__attribute__((used)) static int e1000_link_test(struct e1000_adapter *adapter, u64 *data)
{
 struct e1000_hw *hw = &adapter->hw;
 *data = 0;
 if (hw->media_type == e1000_media_type_internal_serdes) {
  int i = 0;
  hw->serdes_has_link = 0;



  do {
   e1000_check_for_link(hw);
   if (hw->serdes_has_link)
    return *data;
   msleep(20);
  } while (i++ < 3750);

  *data = 1;
 } else {
  e1000_check_for_link(hw);
  if (hw->autoneg)
   msleep(4000);

  if (!(er32(STATUS) & E1000_STATUS_LU)) {
   *data = 1;
  }
 }
 return *data;
}
