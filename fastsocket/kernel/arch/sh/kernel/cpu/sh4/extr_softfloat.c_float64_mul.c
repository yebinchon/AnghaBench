
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float64 ;


 int extractFloat64Exp (int ) ;
 unsigned long long extractFloat64Frac (int ) ;
 char extractFloat64Sign (int ) ;
 int mul64To128 (unsigned long long,unsigned long long,unsigned long long*,unsigned long long*) ;
 int normalizeFloat64Subnormal (unsigned long long,int*,unsigned long long*) ;
 int packFloat64 (char,int ,int ) ;
 int roundAndPackFloat64 (char,int,unsigned long long) ;

float64 float64_mul(float64 a, float64 b)
{
 char aSign, bSign, zSign;
 int aExp, bExp, zExp;
 unsigned long long int aSig, bSig, zSig0, zSig1;

 aSig = extractFloat64Frac(a);
 aExp = extractFloat64Exp(a);
 aSign = extractFloat64Sign(a);
 bSig = extractFloat64Frac(b);
 bExp = extractFloat64Exp(b);
 bSign = extractFloat64Sign(b);
 zSign = aSign ^ bSign;

 if (aExp == 0) {
  if (aSig == 0)
   return packFloat64(zSign, 0, 0);
  normalizeFloat64Subnormal(aSig, &aExp, &aSig);
 }
 if (bExp == 0) {
  if (bSig == 0)
   return packFloat64(zSign, 0, 0);
  normalizeFloat64Subnormal(bSig, &bExp, &bSig);
 }
 if ((aExp == 0x7ff && aSig == 0) || (bExp == 0x7ff && bSig == 0))
  return roundAndPackFloat64(zSign, 0x7ff, 0);

 zExp = aExp + bExp - 0x3FF;
 aSig = (aSig | 0x0010000000000000LL) << 10;
 bSig = (bSig | 0x0010000000000000LL) << 11;
 mul64To128(aSig, bSig, &zSig0, &zSig1);
 zSig0 |= (zSig1 != 0);
 if (0 <= (signed long long int)(zSig0 << 1)) {
  zSig0 <<= 1;
  --zExp;
 }
 return roundAndPackFloat64(zSign, zExp, zSig0);
}
