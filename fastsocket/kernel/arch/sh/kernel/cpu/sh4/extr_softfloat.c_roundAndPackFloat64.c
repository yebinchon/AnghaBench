
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sbits64 ;
typedef int int16 ;
typedef scalar_t__ float64 ;
typedef int flag ;
typedef int bits64 ;
typedef int bits16 ;


 int FPSCR_CAUSE_INEXACT ;
 int FPSCR_CAUSE_OVERFLOW ;
 int FPSCR_CAUSE_UNDERFLOW ;
 scalar_t__ FPSCR_RM_NEAREST ;
 int LIT64 (int) ;
 int float_raise (int) ;
 scalar_t__ float_rounding_mode () ;
 scalar_t__ packFloat64 (int,int,int) ;
 int shift64RightJamming (int,int,int*) ;

__attribute__((used)) static float64 roundAndPackFloat64(flag zSign, int16 zExp, bits64 zSig)
{
 flag roundNearestEven;
 int16 roundIncrement, roundBits;
 flag isTiny;


 roundNearestEven = (float_rounding_mode() == FPSCR_RM_NEAREST);
 roundIncrement = 0x200;
 if (!roundNearestEven) {
  roundIncrement = 0;
 }
 roundBits = zSig & 0x3FF;
 if (0x7FD <= (bits16) zExp) {
  if ((0x7FD < zExp)
      || ((zExp == 0x7FD)
   && ((sbits64) (zSig + roundIncrement) < 0))
      ) {
   float_raise(FPSCR_CAUSE_OVERFLOW | FPSCR_CAUSE_INEXACT);
   return packFloat64(zSign, 0x7FF,
        0) - (roundIncrement == 0);
  }
  if (zExp < 0) {
   isTiny = (zExp < -1)
       || (zSig + roundIncrement <
    LIT64(0x8000000000000000));
   shift64RightJamming(zSig, -zExp, &zSig);
   zExp = 0;
   roundBits = zSig & 0x3FF;
   if (isTiny && roundBits)
    float_raise(FPSCR_CAUSE_UNDERFLOW);
  }
 }
 if (roundBits)
  float_raise(FPSCR_CAUSE_INEXACT);
 zSig = (zSig + roundIncrement) >> 10;
 zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
 if (zSig == 0)
  zExp = 0;
 return packFloat64(zSign, zExp, zSig);

}
