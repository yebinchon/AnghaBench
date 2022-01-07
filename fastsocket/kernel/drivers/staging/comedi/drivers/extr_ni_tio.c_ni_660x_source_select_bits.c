
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;
 int Gi_Source_Select_Bits (unsigned int) ;
 unsigned int NI_660x_Logic_Low_Clock ;
 unsigned int NI_660x_Next_Gate_Clock ;
 unsigned int NI_660x_Next_TC_Clock ;
 unsigned int NI_660x_RTSI_Clock (unsigned int) ;
 unsigned int NI_660x_Source_Pin_Clock (unsigned int) ;
 unsigned int NI_660x_Source_Pin_i_Clock ;
 unsigned int NI_660x_Timebase_1_Clock ;
 unsigned int NI_660x_Timebase_2_Clock ;
 unsigned int NI_660x_Timebase_3_Clock ;
 unsigned int NI_GPCT_CLOCK_SRC_SELECT_MASK ;



 unsigned int const NI_GPCT_RTSI_CLOCK_SRC_BITS (unsigned int) ;
 unsigned int const NI_GPCT_SOURCE_PIN_CLOCK_SRC_BITS (unsigned int) ;




 unsigned int ni_660x_max_rtsi_channel ;
 unsigned int ni_660x_max_source_pin ;

__attribute__((used)) static unsigned ni_660x_source_select_bits(unsigned int clock_source)
{
 unsigned ni_660x_clock;
 unsigned i;
 const unsigned clock_select_bits =
     clock_source & NI_GPCT_CLOCK_SRC_SELECT_MASK;

 switch (clock_select_bits) {
 case 130:
  ni_660x_clock = NI_660x_Timebase_1_Clock;
  break;
 case 129:
  ni_660x_clock = NI_660x_Timebase_2_Clock;
  break;
 case 128:
  ni_660x_clock = NI_660x_Timebase_3_Clock;
  break;
 case 134:
  ni_660x_clock = NI_660x_Logic_Low_Clock;
  break;
 case 131:
  ni_660x_clock = NI_660x_Source_Pin_i_Clock;
  break;
 case 133:
  ni_660x_clock = NI_660x_Next_Gate_Clock;
  break;
 case 132:
  ni_660x_clock = NI_660x_Next_TC_Clock;
  break;
 default:
  for (i = 0; i <= ni_660x_max_rtsi_channel; ++i) {
   if (clock_select_bits == NI_GPCT_RTSI_CLOCK_SRC_BITS(i)) {
    ni_660x_clock = NI_660x_RTSI_Clock(i);
    break;
   }
  }
  if (i <= ni_660x_max_rtsi_channel)
   break;
  for (i = 0; i <= ni_660x_max_source_pin; ++i) {
   if (clock_select_bits ==
       NI_GPCT_SOURCE_PIN_CLOCK_SRC_BITS(i)) {
    ni_660x_clock = NI_660x_Source_Pin_Clock(i);
    break;
   }
  }
  if (i <= ni_660x_max_source_pin)
   break;
  ni_660x_clock = 0;
  BUG();
  break;
 }
 return Gi_Source_Select_Bits(ni_660x_clock);
}
