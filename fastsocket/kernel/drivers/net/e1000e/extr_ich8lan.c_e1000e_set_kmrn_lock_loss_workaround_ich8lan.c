
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; } ;
struct e1000_dev_spec_ich8lan {int kmrn_lock_loss_workaround_enabled; } ;
struct TYPE_3__ {struct e1000_dev_spec_ich8lan ich8lan; } ;
struct e1000_hw {TYPE_2__ mac; TYPE_1__ dev_spec; } ;


 scalar_t__ e1000_ich8lan ;
 int e_dbg (char*) ;

void e1000e_set_kmrn_lock_loss_workaround_ich8lan(struct e1000_hw *hw,
       bool state)
{
 struct e1000_dev_spec_ich8lan *dev_spec = &hw->dev_spec.ich8lan;

 if (hw->mac.type != e1000_ich8lan) {
  e_dbg("Workaround applies to ICH8 only.\n");
  return;
 }

 dev_spec->kmrn_lock_loss_workaround_enabled = state;
}
