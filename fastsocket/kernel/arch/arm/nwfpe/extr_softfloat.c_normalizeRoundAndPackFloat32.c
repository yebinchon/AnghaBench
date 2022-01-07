
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roundingData {int dummy; } ;
typedef int int8 ;
typedef scalar_t__ int16 ;
typedef int float32 ;
typedef int flag ;
typedef int bits32 ;


 int countLeadingZeros32 (int) ;
 int roundAndPackFloat32 (struct roundingData*,int ,scalar_t__,int) ;

__attribute__((used)) static float32
 normalizeRoundAndPackFloat32( struct roundingData *roundData, flag zSign, int16 zExp, bits32 zSig )
{
    int8 shiftCount;

    shiftCount = countLeadingZeros32( zSig ) - 1;
    return roundAndPackFloat32( roundData, zSign, zExp - shiftCount, zSig<<shiftCount );

}
