
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int (* check_overtemp ) (struct ixgbe_hw*) ;} ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct TYPE_5__ {int (* check_link ) (struct ixgbe_hw*,int*,int*,int) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct ixgbe_hw {int device_id; TYPE_4__ phy; TYPE_2__ mac; } ;
struct ixgbe_adapter {int interrupt_event; int flags2; int state; struct ixgbe_hw hw; } ;



 int IXGBE_EICR_GPI_SDP0 ;
 int IXGBE_EICR_LSC ;
 int IXGBE_ERR_OVERTEMP ;
 int IXGBE_FLAG2_TEMP_SENSOR_CAPABLE ;
 int IXGBE_FLAG2_TEMP_SENSOR_EVENT ;
 int __IXGBE_DOWN ;
 int drv ;
 int e_crit (int ,char*) ;
 int stub1 (struct ixgbe_hw*,int*,int*,int) ;
 int stub2 (struct ixgbe_hw*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ixgbe_check_overtemp_subtask(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 eicr = adapter->interrupt_event;

 if (test_bit(__IXGBE_DOWN, &adapter->state))
  return;

 if (!(adapter->flags2 & IXGBE_FLAG2_TEMP_SENSOR_CAPABLE) &&
     !(adapter->flags2 & IXGBE_FLAG2_TEMP_SENSOR_EVENT))
  return;

 adapter->flags2 &= ~IXGBE_FLAG2_TEMP_SENSOR_EVENT;

 switch (hw->device_id) {
 case 128:







  if (!(eicr & IXGBE_EICR_GPI_SDP0) &&
      !(eicr & IXGBE_EICR_LSC))
   return;

  if (!(eicr & IXGBE_EICR_LSC) && hw->mac.ops.check_link) {
   u32 speed;
   bool link_up = 0;

   hw->mac.ops.check_link(hw, &speed, &link_up, 0);

   if (link_up)
    return;
  }


  if (hw->phy.ops.check_overtemp(hw) != IXGBE_ERR_OVERTEMP)
   return;

  break;
 default:
  if (!(eicr & IXGBE_EICR_GPI_SDP0))
   return;
  break;
 }
 e_crit(drv,
        "Network adapter has been stopped because it has over heated. "
        "Restart the computer. If the problem persists, "
        "power off the system and replace the adapter\n");

 adapter->interrupt_event = 0;
}
