
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int type; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct ixgbe_adapter {int flags2; int interrupt_event; int state; TYPE_2__ hw; } ;


 int IXGBE_EICR_GPI_SDP0 ;
 int IXGBE_EICR_LSC ;
 int IXGBE_EICR_TS ;
 int IXGBE_FLAG2_TEMP_SENSOR_CAPABLE ;
 int IXGBE_FLAG2_TEMP_SENSOR_EVENT ;
 int __IXGBE_DOWN ;
 int drv ;
 int e_crit (int ,char*) ;


 int ixgbe_service_event_schedule (struct ixgbe_adapter*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void ixgbe_check_overtemp_event(struct ixgbe_adapter *adapter, u32 eicr)
{
 if (!(adapter->flags2 & IXGBE_FLAG2_TEMP_SENSOR_CAPABLE))
  return;

 switch (adapter->hw.mac.type) {
 case 129:




  if (((eicr & IXGBE_EICR_GPI_SDP0) || (eicr & IXGBE_EICR_LSC)) &&
      (!test_bit(__IXGBE_DOWN, &adapter->state))) {
   adapter->interrupt_event = eicr;
   adapter->flags2 |= IXGBE_FLAG2_TEMP_SENSOR_EVENT;
   ixgbe_service_event_schedule(adapter);
   return;
  }
  return;
 case 128:
  if (!(eicr & IXGBE_EICR_TS))
   return;
  break;
 default:
  return;
 }

 e_crit(drv,
        "Network adapter has been stopped because it has over heated. "
        "Restart the computer. If the problem persists, "
        "power off the system and replace the adapter\n");
}
