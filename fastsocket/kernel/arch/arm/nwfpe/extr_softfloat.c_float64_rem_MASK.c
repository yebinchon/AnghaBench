#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct roundingData {int /*<<< orphan*/  exception; } ;
typedef  scalar_t__ sbits64 ;
typedef  int int16 ;
typedef  int /*<<< orphan*/  float64 ;
typedef  int flag ;
typedef  int bits64 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  float64_default_nan ; 
 int /*<<< orphan*/  float_flag_invalid ; 
 int /*<<< orphan*/  FUNC5 (int,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct roundingData*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

float64 FUNC8( struct roundingData *roundData, float64 a, float64 b )
{
    flag aSign, bSign, zSign;
    int16 aExp, bExp, expDiff;
    bits64 aSig, bSig;
    bits64 q, alternateASig;
    sbits64 sigMean;

    aSig = FUNC3( a );
    aExp = FUNC2( a );
    aSign = FUNC4( a );
    bSig = FUNC3( b );
    bExp = FUNC2( b );
    bSign = FUNC4( b );
    if ( aExp == 0x7FF ) {
        if ( aSig || ( ( bExp == 0x7FF ) && bSig ) ) {
            return FUNC7( a, b );
        }
        roundData->exception |= float_flag_invalid;
        return float64_default_nan;
    }
    if ( bExp == 0x7FF ) {
        if ( bSig ) return FUNC7( a, b );
        return a;
    }
    if ( bExp == 0 ) {
        if ( bSig == 0 ) {
            roundData->exception |= float_flag_invalid;
            return float64_default_nan;
        }
        FUNC5( bSig, &bExp, &bSig );
    }
    if ( aExp == 0 ) {
        if ( aSig == 0 ) return a;
        FUNC5( aSig, &aExp, &aSig );
    }
    expDiff = aExp - bExp;
    aSig = ( aSig | FUNC0( 0x0010000000000000 ) )<<11;
    bSig = ( bSig | FUNC0( 0x0010000000000000 ) )<<11;
    if ( expDiff < 0 ) {
        if ( expDiff < -1 ) return a;
        aSig >>= 1;
    }
    q = ( bSig <= aSig );
    if ( q ) aSig -= bSig;
    expDiff -= 64;
    while ( 0 < expDiff ) {
        q = FUNC1( aSig, 0, bSig );
        q = ( 2 < q ) ? q - 2 : 0;
        aSig = - ( ( bSig>>2 ) * q );
        expDiff -= 62;
    }
    expDiff += 64;
    if ( 0 < expDiff ) {
        q = FUNC1( aSig, 0, bSig );
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
    return FUNC6( roundData, aSign ^ zSign, bExp, aSig );

}