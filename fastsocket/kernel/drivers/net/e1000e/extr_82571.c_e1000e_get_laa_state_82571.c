
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int laa_is_present; } ;
struct TYPE_6__ {TYPE_2__ e82571; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_3__ dev_spec; TYPE_1__ mac; } ;


 scalar_t__ e1000_82571 ;

bool e1000e_get_laa_state_82571(struct e1000_hw *hw)
{
 if (hw->mac.type != e1000_82571)
  return 0;

 return hw->dev_spec.e82571.laa_is_present;
}
