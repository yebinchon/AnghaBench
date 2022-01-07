
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ixgbe_q_vector {int napi; } ;
struct TYPE_2__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {int state; struct ixgbe_q_vector** q_vector; struct ixgbe_hw hw; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int IXGBE_EICR ;
 int IXGBE_EICR_ECC ;
 int IXGBE_EICR_LSC ;
 int IXGBE_EICR_TIMESYNC ;
 int IXGBE_EIMC ;
 int IXGBE_IRQ_CLEAR_MASK ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int __IXGBE_DOWN ;
 int e_info (int ,char*) ;
 int ixgbe_check_fan_failure (struct ixgbe_adapter*,int) ;
 int ixgbe_check_lsc (struct ixgbe_adapter*) ;
 int ixgbe_check_overtemp_event (struct ixgbe_adapter*,int) ;
 int ixgbe_check_sfp_event (struct ixgbe_adapter*,int) ;
 int ixgbe_irq_enable (struct ixgbe_adapter*,int,int) ;


 int ixgbe_ptp_check_pps_event (struct ixgbe_adapter*,int) ;
 int link ;
 int napi_schedule (int *) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t ixgbe_intr(int irq, void *data)
{
 struct ixgbe_adapter *adapter = data;
 struct ixgbe_hw *hw = &adapter->hw;
 struct ixgbe_q_vector *q_vector = adapter->q_vector[0];
 u32 eicr;





 IXGBE_WRITE_REG(hw, IXGBE_EIMC, IXGBE_IRQ_CLEAR_MASK);



 eicr = IXGBE_READ_REG(hw, IXGBE_EICR);
 if (!eicr) {







  if (!test_bit(__IXGBE_DOWN, &adapter->state))
   ixgbe_irq_enable(adapter, 1, 1);
  return IRQ_NONE;
 }

 if (eicr & IXGBE_EICR_LSC)
  ixgbe_check_lsc(adapter);

 switch (hw->mac.type) {
 case 129:
  ixgbe_check_sfp_event(adapter, eicr);

 case 128:
  if (eicr & IXGBE_EICR_ECC)
   e_info(link, "Received unrecoverable ECC err, please "
         "reboot\n");
  ixgbe_check_overtemp_event(adapter, eicr);
  break;
 default:
  break;
 }

 ixgbe_check_fan_failure(adapter, eicr);






 napi_schedule(&q_vector->napi);





 if (!test_bit(__IXGBE_DOWN, &adapter->state))
  ixgbe_irq_enable(adapter, 0, 0);

 return IRQ_HANDLED;
}
