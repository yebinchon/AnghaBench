
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int counter_index; } ;


 int BUG () ;
 unsigned int Gi_Source_Select_Mask ;
 unsigned int Gi_Source_Select_Shift ;
 int NITIO_Gi_Input_Select_Reg (int ) ;



 unsigned int const NI_660x_RTSI_Clock (unsigned int) ;
 unsigned int const NI_660x_Source_Pin_Clock (unsigned int) ;




 unsigned int NI_GPCT_LOGIC_LOW_CLOCK_SRC_BITS ;
 unsigned int NI_GPCT_NEXT_GATE_CLOCK_SRC_BITS ;
 unsigned int NI_GPCT_NEXT_TC_CLOCK_SRC_BITS ;
 unsigned int NI_GPCT_RTSI_CLOCK_SRC_BITS (unsigned int) ;
 unsigned int NI_GPCT_SOURCE_PIN_CLOCK_SRC_BITS (unsigned int) ;
 unsigned int NI_GPCT_SOURCE_PIN_i_CLOCK_SRC_BITS ;
 unsigned int NI_GPCT_TIMEBASE_1_CLOCK_SRC_BITS ;
 unsigned int NI_GPCT_TIMEBASE_2_CLOCK_SRC_BITS ;
 unsigned int NI_GPCT_TIMEBASE_3_CLOCK_SRC_BITS ;
 unsigned int ni_660x_max_rtsi_channel ;
 unsigned int ni_660x_max_source_pin ;
 unsigned int ni_tio_clock_src_modifiers (struct ni_gpct const*) ;
 unsigned int ni_tio_get_soft_copy (struct ni_gpct const*,int ) ;

__attribute__((used)) static unsigned ni_660x_clock_src_select(const struct ni_gpct *counter)
{
 unsigned clock_source = 0;
 unsigned i;
 const unsigned input_select = (ni_tio_get_soft_copy(counter,
           NITIO_Gi_Input_Select_Reg
           (counter->counter_index))
           & Gi_Source_Select_Mask) >>
     Gi_Source_Select_Shift;

 switch (input_select) {
 case 130:
  clock_source = NI_GPCT_TIMEBASE_1_CLOCK_SRC_BITS;
  break;
 case 129:
  clock_source = NI_GPCT_TIMEBASE_2_CLOCK_SRC_BITS;
  break;
 case 128:
  clock_source = NI_GPCT_TIMEBASE_3_CLOCK_SRC_BITS;
  break;
 case 134:
  clock_source = NI_GPCT_LOGIC_LOW_CLOCK_SRC_BITS;
  break;
 case 131:
  clock_source = NI_GPCT_SOURCE_PIN_i_CLOCK_SRC_BITS;
  break;
 case 133:
  clock_source = NI_GPCT_NEXT_GATE_CLOCK_SRC_BITS;
  break;
 case 132:
  clock_source = NI_GPCT_NEXT_TC_CLOCK_SRC_BITS;
  break;
 default:
  for (i = 0; i <= ni_660x_max_rtsi_channel; ++i) {
   if (input_select == NI_660x_RTSI_Clock(i)) {
    clock_source = NI_GPCT_RTSI_CLOCK_SRC_BITS(i);
    break;
   }
  }
  if (i <= ni_660x_max_rtsi_channel)
   break;
  for (i = 0; i <= ni_660x_max_source_pin; ++i) {
   if (input_select == NI_660x_Source_Pin_Clock(i)) {
    clock_source =
        NI_GPCT_SOURCE_PIN_CLOCK_SRC_BITS(i);
    break;
   }
  }
  if (i <= ni_660x_max_source_pin)
   break;
  BUG();
  break;
 }
 clock_source |= ni_tio_clock_src_modifiers(counter);
 return clock_source;
}
