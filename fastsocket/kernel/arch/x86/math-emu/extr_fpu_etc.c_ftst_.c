
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int FPU_REG ;


 int EXCEPTION (int) ;
 int EX_INTERNAL ;
 int EX_Invalid ;
 int EX_StackUnder ;
 int FPU_Special (int *) ;
 int SIGN_POS ;
 int SW_C0 ;
 int SW_C2 ;
 int SW_C3 ;







 int denormal_operand () ;
 int getsign (int *) ;
 int setcc (int) ;

__attribute__((used)) static void ftst_(FPU_REG *st0_ptr, u_char st0tag)
{
 switch (st0tag) {
 case 131:
  setcc(SW_C3);
  break;
 case 132:
  if (getsign(st0_ptr) == SIGN_POS)
   setcc(0);
  else
   setcc(SW_C0);
  break;
 case 133:
  switch (FPU_Special(st0_ptr)) {
  case 130:
   if (getsign(st0_ptr) == SIGN_POS)
    setcc(0);
   else
    setcc(SW_C0);
   if (denormal_operand() < 0) {





    return;
   }
   break;
  case 128:
   setcc(SW_C0 | SW_C2 | SW_C3);
   EXCEPTION(EX_Invalid);
   break;
  case 129:
   if (getsign(st0_ptr) == SIGN_POS)
    setcc(0);
   else
    setcc(SW_C0);
   break;
  default:
   setcc(SW_C0 | SW_C2 | SW_C3);
   EXCEPTION(EX_INTERNAL | 0x14);
   break;
  }
  break;
 case 134:
  setcc(SW_C0 | SW_C2 | SW_C3);
  EXCEPTION(EX_StackUnder);
  break;
 }
}
