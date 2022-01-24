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
typedef  scalar_t__ sbits32 ;
typedef  int int16 ;
typedef  int /*<<< orphan*/  float32 ;
typedef  int flag ;
typedef  int bits64 ;
typedef  int bits32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  float32_default_nan ; 
 int /*<<< orphan*/  float_flag_invalid ; 
 int /*<<< orphan*/  FUNC5 (int,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct roundingData*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

float32 FUNC8( struct roundingData *roundData, float32 a, float32 b )
{
    flag aSign, bSign, zSign;
    int16 aExp, bExp, expDiff;
    bits32 aSig, bSig;
    bits32 q;
    bits64 aSig64, bSig64, q64;
    bits32 alternateASig;
    sbits32 sigMean;

    aSig = FUNC3( a );
    aExp = FUNC2( a );
    aSign = FUNC4( a );
    bSig = FUNC3( b );
    bExp = FUNC2( b );
    bSign = FUNC4( b );
    if ( aExp == 0xFF ) {
        if ( aSig || ( ( bExp == 0xFF ) && bSig ) ) {
            return FUNC7( a, b );
        }
        roundData->exception |= float_flag_invalid;
        return float32_default_nan;
    }
    if ( bExp == 0xFF ) {
        if ( bSig ) return FUNC7( a, b );
        return a;
    }
    if ( bExp == 0 ) {
        if ( bSig == 0 ) {
            roundData->exception |= float_flag_invalid;
            return float32_default_nan;
        }
        FUNC5( bSig, &bExp, &bSig );
    }
    if ( aExp == 0 ) {
        if ( aSig == 0 ) return a;
        FUNC5( aSig, &aExp, &aSig );
    }
    expDiff = aExp - bExp;
    aSig |= 0x00800000;
    bSig |= 0x00800000;
    if ( expDiff < 32 ) {
        aSig <<= 8;
        bSig <<= 8;
        if ( expDiff < 0 ) {
            if ( expDiff < -1 ) return a;
            aSig >>= 1;
        }
        q = ( bSig <= aSig );
        if ( q ) aSig -= bSig;
        if ( 0 < expDiff ) {
            bits64 tmp = ( (bits64) aSig )<<32;
            FUNC0( tmp, bSig );
            q = tmp;
            q >>= 32 - expDiff;
            bSig >>= 2;
            aSig = ( ( aSig>>1 )<<( expDiff - 1 ) ) - bSig * q;
        }
        else {
            aSig >>= 2;
            bSig >>= 2;
        }
    }
    else {
        if ( bSig <= aSig ) aSig -= bSig;
        aSig64 = ( (bits64) aSig )<<40;
        bSig64 = ( (bits64) bSig )<<40;
        expDiff -= 64;
        while ( 0 < expDiff ) {
            q64 = FUNC1( aSig64, 0, bSig64 );
            q64 = ( 2 < q64 ) ? q64 - 2 : 0;
            aSig64 = - ( ( bSig * q64 )<<38 );
            expDiff -= 62;
        }
        expDiff += 64;
        q64 = FUNC1( aSig64, 0, bSig64 );
        q64 = ( 2 < q64 ) ? q64 - 2 : 0;
        q = q64>>( 64 - expDiff );
        bSig <<= 6;
        aSig = ( ( aSig64>>33 )<<( expDiff - 1 ) ) - bSig * q;
    }
    do {
        alternateASig = aSig;
        ++q;
        aSig -= bSig;
    } while ( 0 <= (sbits32) aSig );
    sigMean = aSig + alternateASig;
    if ( ( sigMean < 0 ) || ( ( sigMean == 0 ) && ( q & 1 ) ) ) {
        aSig = alternateASig;
    }
    zSign = ( (sbits32) aSig < 0 );
    if ( zSign ) aSig = - aSig;
    return FUNC6( roundData, aSign ^ zSign, bExp, aSig );

}