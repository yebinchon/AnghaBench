
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roundingData {int exception; } ;
typedef scalar_t__ sbits64 ;
typedef int int16 ;
typedef int float64 ;
typedef int flag ;
typedef int bits64 ;


 int LIT64 (int) ;
 int estimateDiv128To64 (int,int ,int) ;
 int extractFloat64Exp (int ) ;
 int extractFloat64Frac (int ) ;
 int extractFloat64Sign (int ) ;
 int float64_default_nan ;
 int float_flag_invalid ;
 int normalizeFloat64Subnormal (int,int*,int*) ;
 int normalizeRoundAndPackFloat64 (struct roundingData*,int,int,int) ;
 int propagateFloat64NaN (int ,int ) ;

float64 float64_rem( struct roundingData *roundData, float64 a, float64 b )
{
    flag aSign, bSign, zSign;
    int16 aExp, bExp, expDiff;
    bits64 aSig, bSig;
    bits64 q, alternateASig;
    sbits64 sigMean;

    aSig = extractFloat64Frac( a );
    aExp = extractFloat64Exp( a );
    aSign = extractFloat64Sign( a );
    bSig = extractFloat64Frac( b );
    bExp = extractFloat64Exp( b );
    bSign = extractFloat64Sign( b );
    if ( aExp == 0x7FF ) {
        if ( aSig || ( ( bExp == 0x7FF ) && bSig ) ) {
            return propagateFloat64NaN( a, b );
        }
        roundData->exception |= float_flag_invalid;
        return float64_default_nan;
    }
    if ( bExp == 0x7FF ) {
        if ( bSig ) return propagateFloat64NaN( a, b );
        return a;
    }
    if ( bExp == 0 ) {
        if ( bSig == 0 ) {
            roundData->exception |= float_flag_invalid;
            return float64_default_nan;
        }
        normalizeFloat64Subnormal( bSig, &bExp, &bSig );
    }
    if ( aExp == 0 ) {
        if ( aSig == 0 ) return a;
        normalizeFloat64Subnormal( aSig, &aExp, &aSig );
    }
    expDiff = aExp - bExp;
    aSig = ( aSig | LIT64( 0x0010000000000000 ) )<<11;
    bSig = ( bSig | LIT64( 0x0010000000000000 ) )<<11;
    if ( expDiff < 0 ) {
        if ( expDiff < -1 ) return a;
        aSig >>= 1;
    }
    q = ( bSig <= aSig );
    if ( q ) aSig -= bSig;
    expDiff -= 64;
    while ( 0 < expDiff ) {
        q = estimateDiv128To64( aSig, 0, bSig );
        q = ( 2 < q ) ? q - 2 : 0;
        aSig = - ( ( bSig>>2 ) * q );
        expDiff -= 62;
    }
    expDiff += 64;
    if ( 0 < expDiff ) {
        q = estimateDiv128To64( aSig, 0, bSig );
        q = ( 2 < q ) ? q - 2 : 0;
        q >>= 64 - expDiff;
        bSig >>= 2;
        aSig = ( ( aSig>>1 )<<( expDiff - 1 ) ) - bSig * q;
    }
    else {
        aSig >>= 2;
        bSig >>= 2;
    }
    do {
        alternateASig = aSig;
        ++q;
        aSig -= bSig;
    } while ( 0 <= (sbits64) aSig );
    sigMean = aSig + alternateASig;
    if ( ( sigMean < 0 ) || ( ( sigMean == 0 ) && ( q & 1 ) ) ) {
        aSig = alternateASig;
    }
    zSign = ( (sbits64) aSig < 0 );
    if ( zSign ) aSig = - aSig;
    return normalizeRoundAndPackFloat64( roundData, aSign ^ zSign, bExp, aSig );

}
