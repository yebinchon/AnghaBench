
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int FPU_REG ;





 int COMP_Denormal ;
 int COMP_NaN ;

 int EXCEPTION (int) ;
 int EX_INTERNAL ;
 int EX_Invalid ;
 int SW_C0 ;
 int SW_C2 ;
 int SW_C3 ;
 int compare (int const*,int ) ;
 scalar_t__ denormal_operand () ;
 int setcc (int) ;

int FPU_compare_st_data(FPU_REG const *loaded_data, u_char loaded_tag)
{
 int f = 0, c;

 c = compare(loaded_data, loaded_tag);

 if (c & COMP_NaN) {
  EXCEPTION(EX_Invalid);
  f = SW_C3 | SW_C2 | SW_C0;
 } else
  switch (c & 7) {
  case 129:
   f = SW_C0;
   break;
  case 131:
   f = SW_C3;
   break;
  case 130:
   f = 0;
   break;
  case 128:
   f = SW_C3 | SW_C2 | SW_C0;
   break;






  }
 setcc(f);
 if (c & COMP_Denormal) {
  return denormal_operand() < 0;
 }
 return 0;
}
