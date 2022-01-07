
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {scalar_t__ (* check_reset_block ) (struct e1000_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; } ;
struct e1000_adapter {struct e1000_hw hw; } ;


 int e1000_free_desc_rings (struct e1000_adapter*) ;
 int e1000_loopback_cleanup (struct e1000_adapter*) ;
 int e1000_run_loopback_test (struct e1000_adapter*) ;
 int e1000_setup_desc_rings (struct e1000_adapter*) ;
 int e1000_setup_loopback_test (struct e1000_adapter*) ;
 int e_err (char*) ;
 scalar_t__ stub1 (struct e1000_hw*) ;

__attribute__((used)) static int e1000_loopback_test(struct e1000_adapter *adapter, u64 *data)
{
 struct e1000_hw *hw = &adapter->hw;


 if (hw->phy.ops.check_reset_block &&
     hw->phy.ops.check_reset_block(hw)) {
  e_err("Cannot do PHY loopback test when SoL/IDER is active.\n");
  *data = 0;
  goto out;
 }

 *data = e1000_setup_desc_rings(adapter);
 if (*data)
  goto out;

 *data = e1000_setup_loopback_test(adapter);
 if (*data)
  goto err_loopback;

 *data = e1000_run_loopback_test(adapter);
 e1000_loopback_cleanup(adapter);

err_loopback:
 e1000_free_desc_rings(adapter);
out:
 return *data;
}
