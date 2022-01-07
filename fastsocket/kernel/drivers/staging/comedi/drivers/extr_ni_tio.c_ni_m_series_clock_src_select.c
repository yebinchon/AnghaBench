
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct_device {int* regs; } ;
struct ni_gpct {int counter_index; struct ni_gpct_device* counter_dev; } ;


 int BUG () ;
 unsigned int Gi_Source_Select_Mask ;
 unsigned int Gi_Source_Select_Shift ;
 int Gi_Source_Subselect_Bit ;
 int NITIO_Gi_Input_Select_Reg (int ) ;
 unsigned int NITIO_Gi_Second_Gate_Reg (int ) ;
 unsigned int NI_GPCT_ANALOG_TRIGGER_OUT_CLOCK_SRC_BITS ;
 unsigned int NI_GPCT_LOGIC_LOW_CLOCK_SRC_BITS ;
 unsigned int NI_GPCT_NEXT_GATE_CLOCK_SRC_BITS ;
 unsigned int NI_GPCT_NEXT_TC_CLOCK_SRC_BITS ;
 unsigned int NI_GPCT_PFI_CLOCK_SRC_BITS (unsigned int) ;
 unsigned int NI_GPCT_PXI10_CLOCK_SRC_BITS ;
 unsigned int NI_GPCT_PXI_STAR_TRIGGER_CLOCK_SRC_BITS ;
 unsigned int NI_GPCT_RTSI_CLOCK_SRC_BITS (unsigned int) ;
 unsigned int NI_GPCT_TIMEBASE_1_CLOCK_SRC_BITS ;
 unsigned int NI_GPCT_TIMEBASE_2_CLOCK_SRC_BITS ;
 unsigned int NI_GPCT_TIMEBASE_3_CLOCK_SRC_BITS ;



 unsigned int const NI_M_Series_PFI_Clock (unsigned int) ;

 unsigned int const NI_M_Series_RTSI_Clock (unsigned int) ;



 unsigned int ni_m_series_max_pfi_channel ;
 unsigned int ni_m_series_max_rtsi_channel ;
 unsigned int ni_tio_clock_src_modifiers (struct ni_gpct const*) ;
 unsigned int ni_tio_get_soft_copy (struct ni_gpct const*,int ) ;

__attribute__((used)) static unsigned ni_m_series_clock_src_select(const struct ni_gpct *counter)
{
 struct ni_gpct_device *counter_dev = counter->counter_dev;
 const unsigned second_gate_reg =
     NITIO_Gi_Second_Gate_Reg(counter->counter_index);
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
  if (counter_dev->regs[second_gate_reg] &
      Gi_Source_Subselect_Bit)
   clock_source =
       NI_GPCT_ANALOG_TRIGGER_OUT_CLOCK_SRC_BITS;
  else
   clock_source = NI_GPCT_TIMEBASE_3_CLOCK_SRC_BITS;
  break;
 case 134:
  clock_source = NI_GPCT_LOGIC_LOW_CLOCK_SRC_BITS;
  break;
 case 133:
  if (counter_dev->regs[second_gate_reg] &
      Gi_Source_Subselect_Bit)
   clock_source = NI_GPCT_PXI_STAR_TRIGGER_CLOCK_SRC_BITS;
  else
   clock_source = NI_GPCT_NEXT_GATE_CLOCK_SRC_BITS;
  break;
 case 131:
  clock_source = NI_GPCT_PXI10_CLOCK_SRC_BITS;
  break;
 case 132:
  clock_source = NI_GPCT_NEXT_TC_CLOCK_SRC_BITS;
  break;
 default:
  for (i = 0; i <= ni_m_series_max_rtsi_channel; ++i) {
   if (input_select == NI_M_Series_RTSI_Clock(i)) {
    clock_source = NI_GPCT_RTSI_CLOCK_SRC_BITS(i);
    break;
   }
  }
  if (i <= ni_m_series_max_rtsi_channel)
   break;
  for (i = 0; i <= ni_m_series_max_pfi_channel; ++i) {
   if (input_select == NI_M_Series_PFI_Clock(i)) {
    clock_source = NI_GPCT_PFI_CLOCK_SRC_BITS(i);
    break;
   }
  }
  if (i <= ni_m_series_max_pfi_channel)
   break;
  BUG();
  break;
 }
 clock_source |= ni_tio_clock_src_modifiers(counter);
 return clock_source;
}
