
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct roundingData {scalar_t__ exception; int precision; int mode; } ;
struct TYPE_5__ {int* fType; TYPE_1__* fpreg; } ;
struct TYPE_4__ {int fExtended; int fDouble; int fSingle; } ;
typedef TYPE_2__ FPA11 ;


 TYPE_2__* GET_FPA11 () ;
 int SetRoundingMode (unsigned int const) ;
 int SetRoundingPrecision (unsigned int const) ;
 int float32_to_int32 (struct roundingData*,int ) ;
 int float64_to_int32 (struct roundingData*,int ) ;
 int float_raise (scalar_t__) ;
 int floatx80_to_int32 (struct roundingData*,int ) ;
 unsigned int getFm (unsigned int const) ;
 int getRd (unsigned int const) ;



 int writeRegister (int ,int ) ;

unsigned int PerformFIX(const unsigned int opcode)
{
 FPA11 *fpa11 = GET_FPA11();
 unsigned int Fn = getFm(opcode);
 struct roundingData roundData;

 roundData.mode = SetRoundingMode(opcode);
 roundData.precision = SetRoundingPrecision(opcode);
 roundData.exception = 0;

 switch (fpa11->fType[Fn]) {
 case 128:
  {
   writeRegister(getRd(opcode), float32_to_int32(&roundData, fpa11->fpreg[Fn].fSingle));
  }
  break;

 case 130:
  {
   writeRegister(getRd(opcode), float64_to_int32(&roundData, fpa11->fpreg[Fn].fDouble));
  }
  break;
 default:
  return 0;
 }

 if (roundData.exception)
  float_raise(roundData.exception);

 return 1;
}
