
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8 ;
typedef scalar_t__ int16 ;
typedef int float64 ;
typedef int flag ;
typedef int bits64 ;


 int countLeadingZeros64 (int) ;
 int roundAndPackFloat64 (int ,scalar_t__,int) ;

__attribute__((used)) static float64 normalizeRoundAndPackFloat64(flag zSign, int16 zExp, bits64 zSig)
{
 int8 shiftCount;

 shiftCount = countLeadingZeros64(zSig) - 1;
 return roundAndPackFloat64(zSign, zExp - shiftCount,
       zSig << shiftCount);

}
