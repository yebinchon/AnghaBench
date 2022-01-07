
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sbits64 ;
typedef int int16 ;
typedef int float64 ;
typedef int flag ;
typedef int bits64 ;


 int FPSCR_CAUSE_INVALID ;
 int LIT64 (int) ;
 int add128 (int,int,int ,int,int*,int*) ;
 int estimateDiv128To64 (int,int ,int) ;
 int extractFloat64Exp (int ) ;
 int extractFloat64Frac (int ) ;
 int extractFloat64Sign (int ) ;
 int float_raise (int ) ;
 int mul64To128 (int,int,int*,int*) ;
 int normalizeFloat64Subnormal (int,int*,int*) ;
 int packFloat64 (int,int,int ) ;
 int roundAndPackFloat64 (int,int,int) ;
 int sub128 (int,int ,int,int,int*,int*) ;

float64 float64_div(float64 a, float64 b)
{
 flag aSign, bSign, zSign;
 int16 aExp, bExp, zExp;
 bits64 aSig, bSig, zSig;
 bits64 rem0, rem1;
 bits64 term0, term1;

 aSig = extractFloat64Frac(a);
 aExp = extractFloat64Exp(a);
 aSign = extractFloat64Sign(a);
 bSig = extractFloat64Frac(b);
 bExp = extractFloat64Exp(b);
 bSign = extractFloat64Sign(b);
 zSign = aSign ^ bSign;
 if (aExp == 0x7FF) {
  if (bExp == 0x7FF) {
  }
  return packFloat64(zSign, 0x7FF, 0);
 }
 if (bExp == 0x7FF) {
  return packFloat64(zSign, 0, 0);
 }
 if (bExp == 0) {
  if (bSig == 0) {
   if ((aExp | aSig) == 0) {
    float_raise(FPSCR_CAUSE_INVALID);
   }
   return packFloat64(zSign, 0x7FF, 0);
  }
  normalizeFloat64Subnormal(bSig, &bExp, &bSig);
 }
 if (aExp == 0) {
  if (aSig == 0)
   return packFloat64(zSign, 0, 0);
  normalizeFloat64Subnormal(aSig, &aExp, &aSig);
 }
 zExp = aExp - bExp + 0x3FD;
 aSig = (aSig | LIT64(0x0010000000000000)) << 10;
 bSig = (bSig | LIT64(0x0010000000000000)) << 11;
 if (bSig <= (aSig + aSig)) {
  aSig >>= 1;
  ++zExp;
 }
 zSig = estimateDiv128To64(aSig, 0, bSig);
 if ((zSig & 0x1FF) <= 2) {
  mul64To128(bSig, zSig, &term0, &term1);
  sub128(aSig, 0, term0, term1, &rem0, &rem1);
  while ((sbits64) rem0 < 0) {
   --zSig;
   add128(rem0, rem1, 0, bSig, &rem0, &rem1);
  }
  zSig |= (rem1 != 0);
 }
 return roundAndPackFloat64(zSign, zExp, zSig);

}
