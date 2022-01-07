
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16 ;
typedef int float64 ;
typedef int float32 ;
typedef int flag ;
typedef int bits64 ;
typedef scalar_t__ bits32 ;


 int commonNaNToFloat64 (int ) ;
 int extractFloat32Exp (int ) ;
 scalar_t__ extractFloat32Frac (int ) ;
 int extractFloat32Sign (int ) ;
 int float32ToCommonNaN (int ) ;
 int normalizeFloat32Subnormal (scalar_t__,int*,scalar_t__*) ;
 int packFloat64 (int ,int,int) ;

float64 float32_to_float64( float32 a )
{
    flag aSign;
    int16 aExp;
    bits32 aSig;

    aSig = extractFloat32Frac( a );
    aExp = extractFloat32Exp( a );
    aSign = extractFloat32Sign( a );
    if ( aExp == 0xFF ) {
        if ( aSig ) return commonNaNToFloat64( float32ToCommonNaN( a ) );
        return packFloat64( aSign, 0x7FF, 0 );
    }
    if ( aExp == 0 ) {
        if ( aSig == 0 ) return packFloat64( aSign, 0, 0 );
        normalizeFloat32Subnormal( aSig, &aExp, &aSig );
        --aExp;
    }
    return packFloat64( aSign, aExp + 0x380, ( (bits64) aSig )<<29 );

}
