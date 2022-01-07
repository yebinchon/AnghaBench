
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;
 int Gi_Source_Select_Bits (unsigned int) ;

 unsigned int NI_GPCT_CLOCK_SRC_SELECT_MASK ;



 unsigned int const NI_GPCT_PFI_CLOCK_SRC_BITS (unsigned int) ;


 unsigned int const NI_GPCT_RTSI_CLOCK_SRC_BITS (unsigned int) ;



 unsigned int NI_M_Series_Analog_Trigger_Out_Clock ;
 unsigned int NI_M_Series_Logic_Low_Clock ;
 unsigned int NI_M_Series_Next_Gate_Clock ;
 unsigned int NI_M_Series_Next_TC_Clock ;
 unsigned int NI_M_Series_PFI_Clock (unsigned int) ;
 unsigned int NI_M_Series_PXI10_Clock ;
 unsigned int NI_M_Series_PXI_Star_Trigger_Clock ;
 unsigned int NI_M_Series_RTSI_Clock (unsigned int) ;
 unsigned int NI_M_Series_Timebase_1_Clock ;
 unsigned int NI_M_Series_Timebase_2_Clock ;
 unsigned int NI_M_Series_Timebase_3_Clock ;
 unsigned int ni_m_series_max_pfi_channel ;
 unsigned int ni_m_series_max_rtsi_channel ;
 int printk (char*,unsigned long) ;

__attribute__((used)) static unsigned ni_m_series_source_select_bits(unsigned int clock_source)
{
 unsigned ni_m_series_clock;
 unsigned i;
 const unsigned clock_select_bits =
     clock_source & NI_GPCT_CLOCK_SRC_SELECT_MASK;
 switch (clock_select_bits) {
 case 130:
  ni_m_series_clock = NI_M_Series_Timebase_1_Clock;
  break;
 case 129:
  ni_m_series_clock = NI_M_Series_Timebase_2_Clock;
  break;
 case 128:
  ni_m_series_clock = NI_M_Series_Timebase_3_Clock;
  break;
 case 135:
  ni_m_series_clock = NI_M_Series_Logic_Low_Clock;
  break;
 case 134:
  ni_m_series_clock = NI_M_Series_Next_Gate_Clock;
  break;
 case 133:
  ni_m_series_clock = NI_M_Series_Next_TC_Clock;
  break;
 case 132:
  ni_m_series_clock = NI_M_Series_PXI10_Clock;
  break;
 case 131:
  ni_m_series_clock = NI_M_Series_PXI_Star_Trigger_Clock;
  break;
 case 136:
  ni_m_series_clock = NI_M_Series_Analog_Trigger_Out_Clock;
  break;
 default:
  for (i = 0; i <= ni_m_series_max_rtsi_channel; ++i) {
   if (clock_select_bits == NI_GPCT_RTSI_CLOCK_SRC_BITS(i)) {
    ni_m_series_clock = NI_M_Series_RTSI_Clock(i);
    break;
   }
  }
  if (i <= ni_m_series_max_rtsi_channel)
   break;
  for (i = 0; i <= ni_m_series_max_pfi_channel; ++i) {
   if (clock_select_bits == NI_GPCT_PFI_CLOCK_SRC_BITS(i)) {
    ni_m_series_clock = NI_M_Series_PFI_Clock(i);
    break;
   }
  }
  if (i <= ni_m_series_max_pfi_channel)
   break;
  printk("invalid clock source 0x%lx\n",
         (unsigned long)clock_source);
  BUG();
  ni_m_series_clock = 0;
  break;
 }
 return Gi_Source_Select_Bits(ni_m_series_clock);
}
