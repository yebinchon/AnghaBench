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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  float32_default_nan ; 
 int /*<<< orphan*/  float_flag_invalid ; 
 int /*<<< orphan*/  FUNC3 (int,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct roundingData*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int*) ; 

float32 FUNC8( struct roundingData *roundData, float32 a, float32 b )
{
    flag aSign, bSign, zSign;
    int16 aExp, bExp, zExp;
    bits32 aSig, bSig;
    bits64 zSig64;
    bits32 zSig;

    aSig = FUNC1( a );
    aExp = FUNC0( a );
    aSign = FUNC2( a );
    bSig = FUNC1( b );
    bExp = FUNC0( b );
    bSign = FUNC2( b );
    zSign = aSign ^ bSign;
    if ( aExp == 0xFF ) {
        if ( aSig || ( ( bExp == 0xFF ) && bSig ) ) {
            return FUNC5( a, b );
        }
        if ( ( bExp | bSig ) == 0 ) {
            roundData->exception |= float_flag_invalid;
            return float32_default_nan;
        }
        return FUNC4( zSign, 0xFF, 0 );
    }
    if ( bExp == 0xFF ) {
        if ( bSig ) return FUNC5( a, b );
        if ( ( aExp | aSig ) == 0 ) {
            roundData->exception |= float_flag_invalid;
            return float32_default_nan;
        }
        return FUNC4( zSign, 0xFF, 0 );
    }
    if ( aExp == 0 ) {
        if ( aSig == 0 ) return FUNC4( zSign, 0, 0 );
        FUNC3( aSig, &aExp, &aSig );
    }
    if ( bExp == 0 ) {
        if ( bSig == 0 ) return FUNC4( zSign, 0, 0 );
        FUNC3( bSig, &bExp, &bSig );
    }
    zExp = aExp + bExp - 0x7F;
    aSig = ( aSig | 0x00800000 )<<7;
    bSig = ( bSig | 0x00800000 )<<8;
    FUNC7( ( (bits64) aSig ) * bSig, 32, &zSig64 );
    zSig = zSig64;
    if ( 0 <= (sbits32) ( zSig<<1 ) ) {
        zSig <<= 1;
        --zExp;
    }
    return FUNC6( roundData, zSign, zExp, zSig );

}