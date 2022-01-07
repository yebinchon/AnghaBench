
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct_device {int * regs; } ;
struct ni_gpct {int counter_index; struct ni_gpct_device* counter_dev; } ;


 unsigned int CR_CHAN (unsigned int) ;
 int Gi_Second_Gate_Mode_Bit ;
 int Gi_Second_Gate_Select_Bits (unsigned int) ;
 int Gi_Second_Gate_Select_Mask ;
 unsigned int NITIO_Gi_Second_Gate_Reg (int ) ;
 int write_register (struct ni_gpct*,int ,unsigned int const) ;

__attribute__((used)) static int ni_m_series_set_second_gate(struct ni_gpct *counter,
           unsigned int gate_source)
{
 struct ni_gpct_device *counter_dev = counter->counter_dev;
 const unsigned second_gate_reg =
     NITIO_Gi_Second_Gate_Reg(counter->counter_index);
 const unsigned selected_second_gate = CR_CHAN(gate_source);

 static const unsigned selected_second_gate_mask = 0x1f;
 unsigned ni_m_series_second_gate_select;



 switch (selected_second_gate) {
 default:
  ni_m_series_second_gate_select =
      selected_second_gate & selected_second_gate_mask;
  break;
 };
 counter_dev->regs[second_gate_reg] |= Gi_Second_Gate_Mode_Bit;
 counter_dev->regs[second_gate_reg] &= ~Gi_Second_Gate_Select_Mask;
 counter_dev->regs[second_gate_reg] |=
     Gi_Second_Gate_Select_Bits(ni_m_series_second_gate_select);
 write_register(counter, counter_dev->regs[second_gate_reg],
         second_gate_reg);
 return 0;
}
