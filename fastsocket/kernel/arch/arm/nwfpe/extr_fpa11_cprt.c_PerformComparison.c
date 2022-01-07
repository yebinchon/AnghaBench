
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int high; } ;
typedef TYPE_2__ floatx80 ;
typedef int float64 ;
typedef int float32 ;
struct TYPE_15__ {int* fType; TYPE_1__* fpreg; } ;
struct TYPE_13__ {int fSingle; int fDouble; TYPE_2__ fExtended; } ;
typedef TYPE_3__ FPA11 ;


 int BIT_AC ;
 unsigned int CC_CARRY ;
 unsigned int CC_NEGATIVE ;
 unsigned int CC_OVERFLOW ;
 unsigned int CC_ZERO ;
 scalar_t__ CONSTANT_FM (unsigned int const) ;
 TYPE_3__* GET_FPA11 () ;
 scalar_t__ float32_eq_nocheck (int,int) ;
 scalar_t__ float32_is_nan (int) ;
 scalar_t__ float32_lt_nocheck (int,int) ;
 int float32_to_float64 (int) ;
 TYPE_2__ float32_to_floatx80 (int) ;
 scalar_t__ float64_eq_nocheck (int,int) ;
 scalar_t__ float64_is_nan (int) ;
 scalar_t__ float64_lt_nocheck (int,int) ;
 TYPE_2__ float64_to_floatx80 (int) ;
 int float_flag_invalid ;
 int float_raise (int ) ;
 scalar_t__ floatx80_eq (TYPE_2__,TYPE_2__) ;
 scalar_t__ floatx80_is_nan (TYPE_2__) ;
 scalar_t__ floatx80_lt (TYPE_2__,TYPE_2__) ;
 int getDoubleConstant (unsigned int) ;
 TYPE_2__ getExtendedConstant (unsigned int) ;
 unsigned int getFm (unsigned int const) ;
 unsigned int getFn (unsigned int const) ;
 int getSingleConstant (unsigned int) ;
 int readFPSR () ;



 int writeConditionCodes (unsigned int) ;

__attribute__((used)) static unsigned int PerformComparison(const unsigned int opcode)
{
 FPA11 *fpa11 = GET_FPA11();
 unsigned int Fn = getFn(opcode), Fm = getFm(opcode);
 int e_flag = opcode & 0x400000;
 int n_flag = opcode & 0x200000;
 unsigned int flags = 0;
 if (CONSTANT_FM(opcode)) {


  if (fpa11->fType[Fn] == 128) {
   float32 rFm = getSingleConstant(Fm);
   float32 rFn = fpa11->fpreg[Fn].fSingle;

   if (float32_is_nan(rFn))
    goto unordered;

   if (n_flag)
    rFm ^= 0x80000000;


   if (float32_lt_nocheck(rFn, rFm))
    flags |= CC_NEGATIVE;


   if (float32_eq_nocheck(rFn, rFm))
    flags |= CC_ZERO;


   if (float32_lt_nocheck(rFm, rFn))
    flags |= CC_CARRY;
  } else {
   float64 rFm = getDoubleConstant(Fm);
   float64 rFn = fpa11->fpreg[Fn].fDouble;

   if (float64_is_nan(rFn))
    goto unordered;

   if (n_flag)
    rFm ^= 0x8000000000000000ULL;


   if (float64_lt_nocheck(rFn, rFm))
    flags |= CC_NEGATIVE;


   if (float64_eq_nocheck(rFn, rFm))
    flags |= CC_ZERO;


   if (float64_lt_nocheck(rFm, rFn))
    flags |= CC_CARRY;
  }
 } else {

  if (fpa11->fType[Fn] == 128
      && fpa11->fType[Fm] == 128) {
   float32 rFm = fpa11->fpreg[Fm].fSingle;
   float32 rFn = fpa11->fpreg[Fn].fSingle;

   if (float32_is_nan(rFn)
       || float32_is_nan(rFm))
    goto unordered;

   if (n_flag)
    rFm ^= 0x80000000;


   if (float32_lt_nocheck(rFn, rFm))
    flags |= CC_NEGATIVE;


   if (float32_eq_nocheck(rFn, rFm))
    flags |= CC_ZERO;


   if (float32_lt_nocheck(rFm, rFn))
    flags |= CC_CARRY;
  } else {

   float64 rFm, rFn;

   rFm = (fpa11->fType[Fm] == 128) ?
       float32_to_float64(fpa11->fpreg[Fm].fSingle)
       : fpa11->fpreg[Fm].fDouble;

   rFn = (fpa11->fType[Fn] == 128) ?
       float32_to_float64(fpa11->fpreg[Fn].fSingle)
       : fpa11->fpreg[Fn].fDouble;

   if (float64_is_nan(rFn)
       || float64_is_nan(rFm))
    goto unordered;

   if (n_flag)
    rFm ^= 0x8000000000000000ULL;


   if (float64_lt_nocheck(rFn, rFm))
    flags |= CC_NEGATIVE;


   if (float64_eq_nocheck(rFn, rFm))
    flags |= CC_ZERO;


   if (float64_lt_nocheck(rFm, rFn))
    flags |= CC_CARRY;
  }
 }



 writeConditionCodes(flags);

 return 1;

      unordered:





 flags |= CC_OVERFLOW;
 flags &= ~(CC_ZERO | CC_NEGATIVE);

 if (BIT_AC & readFPSR())
  flags |= CC_CARRY;

 if (e_flag)
  float_raise(float_flag_invalid);

 writeConditionCodes(flags);
 return 1;
}
