
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16 ;
typedef int float64 ;
typedef int flag ;
typedef int bits64 ;


 scalar_t__ FPSCR_RM_ZERO ;
 int LIT64 (int) ;
 int extractFloat64Exp (int ) ;
 int extractFloat64Frac (int ) ;
 scalar_t__ float_rounding_mode () ;
 int normalizeRoundAndPackFloat64 (int,int,int) ;
 int packFloat64 (int,int,int ) ;
 int shift64RightJamming (int,int,int*) ;

__attribute__((used)) static float64 subFloat64Sigs(float64 a, float64 b, flag zSign)
{
 int16 aExp, bExp, zExp;
 bits64 aSig, bSig, zSig;
 int16 expDiff;

 aSig = extractFloat64Frac(a);
 aExp = extractFloat64Exp(a);
 bSig = extractFloat64Frac(b);
 bExp = extractFloat64Exp(b);
 expDiff = aExp - bExp;
 aSig <<= 10;
 bSig <<= 10;
 if (0 < expDiff)
  goto aExpBigger;
 if (expDiff < 0)
  goto bExpBigger;
 if (aExp == 0) {
  aExp = 1;
  bExp = 1;
 }
 if (bSig < aSig)
  goto aBigger;
 if (aSig < bSig)
  goto bBigger;
 return packFloat64(float_rounding_mode() == FPSCR_RM_ZERO, 0, 0);
      bExpBigger:
 if (bExp == 0x7FF) {
  return packFloat64(zSign ^ 1, 0x7FF, 0);
 }
 if (aExp == 0) {
  ++expDiff;
 } else {
  aSig |= LIT64(0x4000000000000000);
 }
 shift64RightJamming(aSig, -expDiff, &aSig);
 bSig |= LIT64(0x4000000000000000);
      bBigger:
 zSig = bSig - aSig;
 zExp = bExp;
 zSign ^= 1;
 goto normalizeRoundAndPack;
      aExpBigger:
 if (aExp == 0x7FF) {
  return a;
 }
 if (bExp == 0) {
  --expDiff;
 } else {
  bSig |= LIT64(0x4000000000000000);
 }
 shift64RightJamming(bSig, expDiff, &bSig);
 aSig |= LIT64(0x4000000000000000);
      aBigger:
 zSig = aSig - bSig;
 zExp = aExp;
      normalizeRoundAndPack:
 --zExp;
 return normalizeRoundAndPackFloat64(zSign, zExp, zSig);

}
