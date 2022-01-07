
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ni_gpct_register { ____Placeholder_ni_gpct_register } ni_gpct_register ;


 int BUG () ;
 int NITIO_G0_Second_Gate_Reg ;
 int NITIO_G1_Second_Gate_Reg ;
 int NITIO_G2_Second_Gate_Reg ;
 int NITIO_G3_Second_Gate_Reg ;

__attribute__((used)) static inline enum ni_gpct_register NITIO_Gi_Second_Gate_Reg(int counter_index)
{
 switch (counter_index) {
 case 0:
  return NITIO_G0_Second_Gate_Reg;
  break;
 case 1:
  return NITIO_G1_Second_Gate_Reg;
  break;
 case 2:
  return NITIO_G2_Second_Gate_Reg;
  break;
 case 3:
  return NITIO_G3_Second_Gate_Reg;
  break;
 default:
  BUG();
  break;
 }
 return 0;
}
