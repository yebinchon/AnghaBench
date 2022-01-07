
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;



 unsigned int NI_660x_RTSI_Second_Gate_Select (unsigned int) ;


 unsigned int NI_660x_Up_Down_Pin_Second_Gate_Select (unsigned int) ;

 int NI_GPCT_LOGIC_LOW_GATE_SELECT ;
 int NI_GPCT_NEXT_OUT_GATE_SELECT ;
 int NI_GPCT_NEXT_SOURCE_GATE_SELECT ;
 int NI_GPCT_RTSI_GATE_SELECT (unsigned int) ;
 int NI_GPCT_SELECTED_GATE_GATE_SELECT ;
 int NI_GPCT_SOURCE_PIN_i_GATE_SELECT ;
 int NI_GPCT_UP_DOWN_PIN_GATE_SELECT (unsigned int) ;
 int NI_GPCT_UP_DOWN_PIN_i_GATE_SELECT ;
 unsigned int ni_660x_max_rtsi_channel ;
 unsigned int ni_660x_max_up_down_pin ;

__attribute__((used)) static unsigned ni_660x_second_gate_to_generic_gate_source(unsigned
          ni_660x_gate_select)
{
 unsigned i;

 switch (ni_660x_gate_select) {
 case 129:
  return NI_GPCT_SOURCE_PIN_i_GATE_SELECT;
  break;
 case 128:
  return NI_GPCT_UP_DOWN_PIN_i_GATE_SELECT;
  break;
 case 131:
  return NI_GPCT_NEXT_SOURCE_GATE_SELECT;
  break;
 case 132:
  return NI_GPCT_NEXT_OUT_GATE_SELECT;
  break;
 case 130:
  return NI_GPCT_SELECTED_GATE_GATE_SELECT;
  break;
 case 133:
  return NI_GPCT_LOGIC_LOW_GATE_SELECT;
  break;
 default:
  for (i = 0; i <= ni_660x_max_rtsi_channel; ++i) {
   if (ni_660x_gate_select ==
       NI_660x_RTSI_Second_Gate_Select(i)) {
    return NI_GPCT_RTSI_GATE_SELECT(i);
    break;
   }
  }
  if (i <= ni_660x_max_rtsi_channel)
   break;
  for (i = 0; i <= ni_660x_max_up_down_pin; ++i) {
   if (ni_660x_gate_select ==
       NI_660x_Up_Down_Pin_Second_Gate_Select(i)) {
    return NI_GPCT_UP_DOWN_PIN_GATE_SELECT(i);
    break;
   }
  }
  if (i <= ni_660x_max_up_down_pin)
   break;
  BUG();
  break;
 }
 return 0;
}
