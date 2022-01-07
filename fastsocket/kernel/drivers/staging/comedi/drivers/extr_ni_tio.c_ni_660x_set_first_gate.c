
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int counter_index; } ;


 unsigned int CR_CHAN (unsigned int) ;
 int EINVAL ;
 int Gi_Gate_Select_Bits (unsigned int) ;
 int Gi_Gate_Select_Mask ;
 int NITIO_Gi_Input_Select_Reg (int ) ;
 unsigned int NI_660x_Next_SRC_Gate_Select ;
 unsigned int const NI_GPCT_GATE_PIN_GATE_SELECT (unsigned int) ;




 unsigned int const NI_GPCT_RTSI_GATE_SELECT (unsigned int) ;

 unsigned int ni_660x_max_gate_pin ;
 unsigned int ni_660x_max_rtsi_channel ;
 int ni_tio_set_bits (struct ni_gpct*,int ,int ,int ) ;

__attribute__((used)) static int ni_660x_set_first_gate(struct ni_gpct *counter,
      unsigned int gate_source)
{
 const unsigned selected_gate = CR_CHAN(gate_source);

 const unsigned selected_gate_mask = 0x1f;
 unsigned ni_660x_gate_select;
 unsigned i;

 switch (selected_gate) {
 case 129:
  ni_660x_gate_select = NI_660x_Next_SRC_Gate_Select;
  break;
 case 130:
 case 131:
 case 128:
 case 132:
  ni_660x_gate_select = selected_gate & selected_gate_mask;
  break;
 default:
  for (i = 0; i <= ni_660x_max_rtsi_channel; ++i) {
   if (selected_gate == NI_GPCT_RTSI_GATE_SELECT(i)) {
    ni_660x_gate_select =
        selected_gate & selected_gate_mask;
    break;
   }
  }
  if (i <= ni_660x_max_rtsi_channel)
   break;
  for (i = 0; i <= ni_660x_max_gate_pin; ++i) {
   if (selected_gate == NI_GPCT_GATE_PIN_GATE_SELECT(i)) {
    ni_660x_gate_select =
        selected_gate & selected_gate_mask;
    break;
   }
  }
  if (i <= ni_660x_max_gate_pin)
   break;
  return -EINVAL;
  break;
 }
 ni_tio_set_bits(counter,
   NITIO_Gi_Input_Select_Reg(counter->counter_index),
   Gi_Gate_Select_Mask,
   Gi_Gate_Select_Bits(ni_660x_gate_select));
 return 0;
}
