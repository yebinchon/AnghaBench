
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roundingData {int dummy; } ;
typedef int int16 ;
typedef int float64 ;
typedef int float32 ;
typedef int flag ;
typedef int bits64 ;
typedef int bits32 ;


 int commonNaNToFloat32 (int ) ;
 int extractFloat64Exp (int ) ;
 int extractFloat64Frac (int ) ;
 int extractFloat64Sign (int ) ;
 int float64ToCommonNaN (int ) ;
 int packFloat32 (int ,int,int ) ;
 int roundAndPackFloat32 (struct roundingData*,int ,int,int) ;
 int shift64RightJamming (int,int,int*) ;

float32 float64_to_float32( struct roundingData *roundData, float64 a )
{
    flag aSign;
    int16 aExp;
    bits64 aSig;
    bits32 zSig;

    aSig = extractFloat64Frac( a );
    aExp = extractFloat64Exp( a );
    aSign = extractFloat64Sign( a );
    if ( aExp == 0x7FF ) {
        if ( aSig ) return commonNaNToFloat32( float64ToCommonNaN( a ) );
        return packFloat32( aSign, 0xFF, 0 );
    }
    shift64RightJamming( aSig, 22, &aSig );
    zSig = aSig;
    if ( aExp || zSig ) {
        zSig |= 0x40000000;
        aExp -= 0x381;
    }
    return roundAndPackFloat32( roundData, aSign, aExp, zSig );

}
