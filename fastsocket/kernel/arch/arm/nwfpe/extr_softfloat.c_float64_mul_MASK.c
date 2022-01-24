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
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  float64_default_nan ; 
 int /*<<< orphan*/  float_flag_invalid ; 
 int /*<<< orphan*/  FUNC4 (int,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct roundingData*,int,int,int) ; 

float64 FUNC9( struct roundingData *roundData, float64 a, float64 b )
{
    flag aSign, bSign, zSign;
    int16 aExp, bExp, zExp;
    bits64 aSig, bSig, zSig0, zSig1;

    aSig = FUNC2( a );
    aExp = FUNC1( a );
    aSign = FUNC3( a );
    bSig = FUNC2( b );
    bExp = FUNC1( b );
    bSign = FUNC3( b );
    zSign = aSign ^ bSign;
    if ( aExp == 0x7FF ) {
        if ( aSig || ( ( bExp == 0x7FF ) && bSig ) ) {
            return FUNC7( a, b );
        }
        if ( ( bExp | bSig ) == 0 ) {
            roundData->exception |= float_flag_invalid;
            return float64_default_nan;
        }
        return FUNC6( zSign, 0x7FF, 0 );
    }
    if ( bExp == 0x7FF ) {
        if ( bSig ) return FUNC7( a, b );
        if ( ( aExp | aSig ) == 0 ) {
            roundData->exception |= float_flag_invalid;
            return float64_default_nan;
        }
        return FUNC6( zSign, 0x7FF, 0 );
    }
    if ( aExp == 0 ) {
        if ( aSig == 0 ) return FUNC6( zSign, 0, 0 );
        FUNC5( aSig, &aExp, &aSig );
    }
    if ( bExp == 0 ) {
        if ( bSig == 0 ) return FUNC6( zSign, 0, 0 );
        FUNC5( bSig, &bExp, &bSig );
    }
    zExp = aExp + bExp - 0x3FF;
    aSig = ( aSig | FUNC0( 0x0010000000000000 ) )<<10;
    bSig = ( bSig | FUNC0( 0x0010000000000000 ) )<<11;
    FUNC4( aSig, bSig, &zSig0, &zSig1 );
    zSig0 |= ( zSig1 != 0 );
    if ( 0 <= (sbits64) ( zSig0<<1 ) ) {
        zSig0 <<= 1;
        --zExp;
    }
    return FUNC8( roundData, zSign, zExp, zSig0 );

}