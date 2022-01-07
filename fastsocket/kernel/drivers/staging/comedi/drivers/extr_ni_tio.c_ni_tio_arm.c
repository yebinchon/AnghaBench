
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct_device {int variant; } ;
struct ni_gpct {int counter_index; struct ni_gpct_device* counter_dev; } ;


 int EINVAL ;
 unsigned int Gi_Arm_Bit ;
 unsigned int Gi_Arm_Copy_Bit ;
 unsigned int Gi_Disarm_Bit ;
 unsigned int Gi_HW_Arm_Enable_Bit ;
 unsigned int Gi_HW_Arm_Select_Mask (int ) ;
 unsigned int Gi_HW_Arm_Select_Shift ;
 int NITIO_Gi_Command_Reg (int ) ;
 int NITIO_Gi_Counting_Mode_Reg (int ) ;


 unsigned int NI_GPCT_ARM_UNKNOWN ;
 scalar_t__ ni_tio_counting_mode_registers_present (struct ni_gpct_device*) ;
 int ni_tio_set_bits (struct ni_gpct*,int ,unsigned int,unsigned int) ;
 int ni_tio_set_bits_transient (struct ni_gpct*,int ,int ,int ,unsigned int) ;

int ni_tio_arm(struct ni_gpct *counter, int arm, unsigned start_trigger)
{
 struct ni_gpct_device *counter_dev = counter->counter_dev;

 unsigned command_transient_bits = 0;

 if (arm) {
  switch (start_trigger) {
  case 129:
   command_transient_bits |= Gi_Arm_Bit;
   break;
  case 128:
   command_transient_bits |= Gi_Arm_Bit | Gi_Arm_Copy_Bit;
   break;
  default:
   break;
  }
  if (ni_tio_counting_mode_registers_present(counter_dev)) {
   unsigned counting_mode_bits = 0;

   switch (start_trigger) {
   case 129:
   case 128:
    break;
   default:
    if (start_trigger & NI_GPCT_ARM_UNKNOWN) {

     unsigned hw_arm_select_bits =
         (start_trigger <<
          Gi_HW_Arm_Select_Shift) &
         Gi_HW_Arm_Select_Mask
         (counter_dev->variant);

     counting_mode_bits |=
         Gi_HW_Arm_Enable_Bit |
         hw_arm_select_bits;
    } else {
     return -EINVAL;
    }
    break;
   }
   ni_tio_set_bits(counter,
     NITIO_Gi_Counting_Mode_Reg
     (counter->counter_index),
     Gi_HW_Arm_Select_Mask
     (counter_dev->variant) |
     Gi_HW_Arm_Enable_Bit,
     counting_mode_bits);
  }
 } else {
  command_transient_bits |= Gi_Disarm_Bit;
 }
 ni_tio_set_bits_transient(counter,
      NITIO_Gi_Command_Reg(counter->counter_index),
      0, 0, command_transient_bits);
 return 0;
}
