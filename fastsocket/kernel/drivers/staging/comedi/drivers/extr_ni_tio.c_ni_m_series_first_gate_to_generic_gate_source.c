
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;
 int NI_GPCT_AI_START1_GATE_SELECT ;
 int NI_GPCT_AI_START2_GATE_SELECT ;
 int NI_GPCT_ANALOG_TRIGGER_OUT_GATE_SELECT ;
 int NI_GPCT_LOGIC_LOW_GATE_SELECT ;
 int NI_GPCT_NEXT_OUT_GATE_SELECT ;
 int NI_GPCT_NEXT_SOURCE_GATE_SELECT ;
 int NI_GPCT_PFI_GATE_SELECT (unsigned int) ;
 int NI_GPCT_PXI_STAR_TRIGGER_GATE_SELECT ;
 int NI_GPCT_RTSI_GATE_SELECT (unsigned int) ;
 int NI_GPCT_TIMESTAMP_MUX_GATE_SELECT ;






 unsigned int NI_M_Series_PFI_Gate_Select (unsigned int) ;

 unsigned int NI_M_Series_RTSI_Gate_Select (unsigned int) ;

 unsigned int ni_m_series_max_pfi_channel ;
 unsigned int ni_m_series_max_rtsi_channel ;

__attribute__((used)) static unsigned ni_m_series_first_gate_to_generic_gate_source(unsigned
             ni_m_series_gate_select)
{
 unsigned i;

 switch (ni_m_series_gate_select) {
 case 128:
  return NI_GPCT_TIMESTAMP_MUX_GATE_SELECT;
  break;
 case 134:
  return NI_GPCT_AI_START2_GATE_SELECT;
  break;
 case 129:
  return NI_GPCT_PXI_STAR_TRIGGER_GATE_SELECT;
  break;
 case 131:
  return NI_GPCT_NEXT_OUT_GATE_SELECT;
  break;
 case 135:
  return NI_GPCT_AI_START1_GATE_SELECT;
  break;
 case 130:
  return NI_GPCT_NEXT_SOURCE_GATE_SELECT;
  break;
 case 133:
  return NI_GPCT_ANALOG_TRIGGER_OUT_GATE_SELECT;
  break;
 case 132:
  return NI_GPCT_LOGIC_LOW_GATE_SELECT;
  break;
 default:
  for (i = 0; i <= ni_m_series_max_rtsi_channel; ++i) {
   if (ni_m_series_gate_select ==
       NI_M_Series_RTSI_Gate_Select(i)) {
    return NI_GPCT_RTSI_GATE_SELECT(i);
    break;
   }
  }
  if (i <= ni_m_series_max_rtsi_channel)
   break;
  for (i = 0; i <= ni_m_series_max_pfi_channel; ++i) {
   if (ni_m_series_gate_select ==
       NI_M_Series_PFI_Gate_Select(i)) {
    return NI_GPCT_PFI_GATE_SELECT(i);
    break;
   }
  }
  if (i <= ni_m_series_max_pfi_channel)
   break;
  BUG();
  break;
 }
 return 0;
}
