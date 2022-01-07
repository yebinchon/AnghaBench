
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct_device {int * regs; } ;
struct ni_gpct {int counter_index; struct ni_gpct_device* counter_dev; } ;


 unsigned int CR_CHAN (unsigned int) ;
 int EINVAL ;
 int Gi_Second_Gate_Mode_Bit ;
 int Gi_Second_Gate_Select_Bits (unsigned int) ;
 int Gi_Second_Gate_Select_Mask ;
 unsigned int NITIO_Gi_Second_Gate_Reg (int ) ;
 unsigned int NI_660x_Next_SRC_Second_Gate_Select ;



 unsigned int const NI_GPCT_RTSI_GATE_SELECT (unsigned int) ;


 unsigned int const NI_GPCT_UP_DOWN_PIN_GATE_SELECT (unsigned int) ;

 unsigned int ni_660x_max_rtsi_channel ;
 unsigned int ni_660x_max_up_down_pin ;
 int write_register (struct ni_gpct*,int ,unsigned int const) ;

__attribute__((used)) static int ni_660x_set_second_gate(struct ni_gpct *counter,
       unsigned int gate_source)
{
 struct ni_gpct_device *counter_dev = counter->counter_dev;
 const unsigned second_gate_reg =
     NITIO_Gi_Second_Gate_Reg(counter->counter_index);
 const unsigned selected_second_gate = CR_CHAN(gate_source);

 static const unsigned selected_second_gate_mask = 0x1f;
 unsigned ni_660x_second_gate_select;
 unsigned i;

 switch (selected_second_gate) {
 case 129:
 case 128:
 case 130:
 case 132:
 case 133:
  ni_660x_second_gate_select =
      selected_second_gate & selected_second_gate_mask;
  break;
 case 131:
  ni_660x_second_gate_select =
      NI_660x_Next_SRC_Second_Gate_Select;
  break;
 default:
  for (i = 0; i <= ni_660x_max_rtsi_channel; ++i) {
   if (selected_second_gate == NI_GPCT_RTSI_GATE_SELECT(i)) {
    ni_660x_second_gate_select =
        selected_second_gate &
        selected_second_gate_mask;
    break;
   }
  }
  if (i <= ni_660x_max_rtsi_channel)
   break;
  for (i = 0; i <= ni_660x_max_up_down_pin; ++i) {
   if (selected_second_gate ==
       NI_GPCT_UP_DOWN_PIN_GATE_SELECT(i)) {
    ni_660x_second_gate_select =
        selected_second_gate &
        selected_second_gate_mask;
    break;
   }
  }
  if (i <= ni_660x_max_up_down_pin)
   break;
  return -EINVAL;
  break;
 };
 counter_dev->regs[second_gate_reg] |= Gi_Second_Gate_Mode_Bit;
 counter_dev->regs[second_gate_reg] &= ~Gi_Second_Gate_Select_Mask;
 counter_dev->regs[second_gate_reg] |=
     Gi_Second_Gate_Select_Bits(ni_660x_second_gate_select);
 write_register(counter, counter_dev->regs[second_gate_reg],
         second_gate_reg);
 return 0;
}
