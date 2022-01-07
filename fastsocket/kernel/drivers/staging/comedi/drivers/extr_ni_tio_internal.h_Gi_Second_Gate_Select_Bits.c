
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int Gi_Second_Gate_Select_Mask ;
 unsigned int Gi_Second_Gate_Select_Shift ;

__attribute__((used)) static inline unsigned Gi_Second_Gate_Select_Bits(unsigned second_gate_select)
{
 return (second_gate_select << Gi_Second_Gate_Select_Shift) &
     Gi_Second_Gate_Select_Mask;
}
