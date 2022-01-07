
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct_device {int variant; int * regs; } ;
struct ni_gpct {int counter_index; struct ni_gpct_device* counter_dev; } ;


 int BUG () ;
 int CR_CHAN (unsigned int) ;
 unsigned int CR_INVERT ;
 int EINVAL ;
 int Gi_Gating_Disabled_Bits ;
 int Gi_Gating_Mode_Mask ;
 int Gi_Second_Gate_Mode_Bit ;
 int Gi_Second_Gate_Polarity_Bit ;
 int NITIO_Gi_Mode_Reg (int ) ;
 unsigned int NITIO_Gi_Second_Gate_Reg (int ) ;
 int NI_GPCT_DISABLED_GATE_SELECT ;
 int ni_660x_set_first_gate (struct ni_gpct*,unsigned int) ;
 int ni_660x_set_second_gate (struct ni_gpct*,unsigned int) ;



 int ni_m_series_set_first_gate (struct ni_gpct*,unsigned int) ;
 int ni_m_series_set_second_gate (struct ni_gpct*,unsigned int) ;
 int ni_tio_second_gate_registers_present (struct ni_gpct_device*) ;
 int ni_tio_set_bits (struct ni_gpct*,int ,int ,int ) ;
 int ni_tio_set_first_gate_modifiers (struct ni_gpct*,unsigned int) ;
 int write_register (struct ni_gpct*,int ,unsigned int const) ;

int ni_tio_set_gate_src(struct ni_gpct *counter, unsigned gate_index,
   unsigned int gate_source)
{
 struct ni_gpct_device *counter_dev = counter->counter_dev;
 const unsigned second_gate_reg =
     NITIO_Gi_Second_Gate_Reg(counter->counter_index);

 switch (gate_index) {
 case 0:
  if (CR_CHAN(gate_source) == NI_GPCT_DISABLED_GATE_SELECT) {
   ni_tio_set_bits(counter,
     NITIO_Gi_Mode_Reg(counter->
         counter_index),
     Gi_Gating_Mode_Mask,
     Gi_Gating_Disabled_Bits);
   return 0;
  }
  ni_tio_set_first_gate_modifiers(counter, gate_source);
  switch (counter_dev->variant) {
  case 129:
  case 128:
   return ni_m_series_set_first_gate(counter, gate_source);
   break;
  case 130:
   return ni_660x_set_first_gate(counter, gate_source);
   break;
  default:
   BUG();
   break;
  }
  break;
 case 1:
  if (ni_tio_second_gate_registers_present(counter_dev) == 0)
   return -EINVAL;
  if (CR_CHAN(gate_source) == NI_GPCT_DISABLED_GATE_SELECT) {
   counter_dev->regs[second_gate_reg] &=
       ~Gi_Second_Gate_Mode_Bit;
   write_register(counter,
           counter_dev->regs[second_gate_reg],
           second_gate_reg);
   return 0;
  }
  if (gate_source & CR_INVERT) {
   counter_dev->regs[second_gate_reg] |=
       Gi_Second_Gate_Polarity_Bit;
  } else {
   counter_dev->regs[second_gate_reg] &=
       ~Gi_Second_Gate_Polarity_Bit;
  }
  switch (counter_dev->variant) {
  case 128:
   return ni_m_series_set_second_gate(counter,
          gate_source);
   break;
  case 130:
   return ni_660x_set_second_gate(counter, gate_source);
   break;
  default:
   BUG();
   break;
  }
  break;
 default:
  return -EINVAL;
  break;
 }
 return 0;
}
