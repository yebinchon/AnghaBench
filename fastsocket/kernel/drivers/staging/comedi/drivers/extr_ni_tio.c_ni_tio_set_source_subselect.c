
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct_device {scalar_t__ variant; int * regs; } ;
struct ni_gpct {int counter_index; struct ni_gpct_device* counter_dev; } ;


 int Gi_Source_Subselect_Bit ;
 unsigned int NITIO_Gi_Second_Gate_Reg (int ) ;

 unsigned int NI_GPCT_CLOCK_SRC_SELECT_MASK ;



 scalar_t__ ni_gpct_variant_m_series ;
 int write_register (struct ni_gpct*,int ,unsigned int const) ;

__attribute__((used)) static void ni_tio_set_source_subselect(struct ni_gpct *counter,
     unsigned int clock_source)
{
 struct ni_gpct_device *counter_dev = counter->counter_dev;
 const unsigned second_gate_reg =
     NITIO_Gi_Second_Gate_Reg(counter->counter_index);

 if (counter_dev->variant != ni_gpct_variant_m_series)
  return;
 switch (clock_source & NI_GPCT_CLOCK_SRC_SELECT_MASK) {

 case 130:
 case 128:
  counter_dev->regs[second_gate_reg] &= ~Gi_Source_Subselect_Bit;
  break;

 case 131:
 case 129:
  counter_dev->regs[second_gate_reg] |= Gi_Source_Subselect_Bit;
  break;

 default:
  return;
  break;
 }
 write_register(counter, counter_dev->regs[second_gate_reg],
         second_gate_reg);
}
