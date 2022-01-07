
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int G0_Gate_Interrupt_Enable_Bit ;
 unsigned int G1_Gate_Interrupt_Enable_Bit ;

__attribute__((used)) static inline unsigned Gi_Gate_Interrupt_Enable_Bit(unsigned counter_index)
{
 unsigned bit;

 if (counter_index % 2) {
  bit = G1_Gate_Interrupt_Enable_Bit;
 } else {
  bit = G0_Gate_Interrupt_Enable_Bit;
 }
 return bit;
}
