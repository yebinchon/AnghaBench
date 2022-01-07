
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
struct TYPE_3__ {int type; } ;
struct ixgbe_hw {TYPE_2__ mac; TYPE_1__ phy; } ;


 int ixgbe_mac_82598EB ;
__attribute__((used)) static inline bool ixgbe_is_sfp(struct ixgbe_hw *hw)
{
 switch (hw->phy.type) {
 case 134:
 case 133:
 case 131:
 case 128:
 case 130:
 case 129:
 case 135:
 case 132:
  return 1;
 case 136:
  if (hw->mac.type == ixgbe_mac_82598EB)
   return 1;
 default:
  return 0;
 }
}
