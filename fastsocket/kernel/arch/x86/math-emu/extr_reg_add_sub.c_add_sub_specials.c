
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ u_char ;
struct TYPE_10__ {int sigh; } ;
typedef TYPE_1__ FPU_REG ;


 int CW_RC ;
 int EXCEPTION (int) ;
 int EX_INTERNAL ;
 int FPU_Exception ;
 int FPU_copy_to_regi (TYPE_1__ const*,scalar_t__,int) ;
 int FPU_settagi (int,scalar_t__) ;
 int RC_DOWN ;
 scalar_t__ SIGN_NEG ;
 scalar_t__ SIGN_POS ;
 scalar_t__ TAG_Empty ;
 scalar_t__ TAG_Special ;
 scalar_t__ TAG_Valid ;
 scalar_t__ TAG_Zero ;
 scalar_t__ TW_Denormal ;
 scalar_t__ TW_Infinity ;
 int addexponent (TYPE_1__*,int) ;
 int arith_invalid (int) ;
 scalar_t__ denormal_operand () ;
 int reg_copy (TYPE_1__ const*,TYPE_1__*) ;
 int setsign (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static
int add_sub_specials(FPU_REG const *a, u_char taga, u_char signa,
       FPU_REG const *b, u_char tagb, u_char signb,
       FPU_REG * dest, int deststnr, int control_w)
{
 if (((taga == TW_Denormal) || (tagb == TW_Denormal))
     && (denormal_operand() < 0))
  return FPU_Exception;

 if (taga == TAG_Zero) {
  if (tagb == TAG_Zero) {

   u_char different_signs = signa ^ signb;

   FPU_copy_to_regi(a, TAG_Zero, deststnr);
   if (different_signs) {


    setsign(dest, ((control_w & CW_RC) != RC_DOWN)
     ? SIGN_POS : SIGN_NEG);
   } else
    setsign(dest, signa);
   return TAG_Zero;
  } else {
   reg_copy(b, dest);
   if ((tagb == TW_Denormal) && (b->sigh & 0x80000000)) {

    addexponent(dest, 1);
    tagb = TAG_Valid;
   } else if (tagb > TAG_Empty)
    tagb = TAG_Special;
   setsign(dest, signb);
   FPU_settagi(deststnr, tagb);
   return tagb;
  }
 } else if (tagb == TAG_Zero) {
  reg_copy(a, dest);
  if ((taga == TW_Denormal) && (a->sigh & 0x80000000)) {

   addexponent(dest, 1);
   taga = TAG_Valid;
  } else if (taga > TAG_Empty)
   taga = TAG_Special;
  setsign(dest, signa);
  FPU_settagi(deststnr, taga);
  return taga;
 } else if (taga == TW_Infinity) {
  if ((tagb != TW_Infinity) || (signa == signb)) {
   FPU_copy_to_regi(a, TAG_Special, deststnr);
   setsign(dest, signa);
   return taga;
  }

  return arith_invalid(deststnr);
 } else if (tagb == TW_Infinity) {
  FPU_copy_to_regi(b, TAG_Special, deststnr);
  setsign(dest, signb);
  return tagb;
 }




 return FPU_Exception;
}
