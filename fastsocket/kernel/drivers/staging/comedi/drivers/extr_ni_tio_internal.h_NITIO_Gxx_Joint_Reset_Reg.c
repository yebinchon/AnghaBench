
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ni_gpct_register { ____Placeholder_ni_gpct_register } ni_gpct_register ;


 int BUG () ;
 int NITIO_G01_Joint_Reset_Reg ;
 int NITIO_G23_Joint_Reset_Reg ;

__attribute__((used)) static inline enum ni_gpct_register NITIO_Gxx_Joint_Reset_Reg(unsigned
             counter_index)
{
 switch (counter_index) {
 case 0:
 case 1:
  return NITIO_G01_Joint_Reset_Reg;
  break;
 case 2:
 case 3:
  return NITIO_G23_Joint_Reset_Reg;
  break;
 default:
  BUG();
  break;
 }
 return 0;
}
