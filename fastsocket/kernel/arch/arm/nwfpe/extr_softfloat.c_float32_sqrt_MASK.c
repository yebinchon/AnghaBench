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
typedef  int /*<<< orphan*/  float32 ;
typedef  scalar_t__ flag ;
typedef  int bits64 ;
typedef  int bits32 ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  float32_default_nan ; 
 int /*<<< orphan*/  float_flag_invalid ; 
 int /*<<< orphan*/  FUNC4 (int,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct roundingData*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int*) ; 

float32 FUNC8( struct roundingData *roundData, float32 a )
{
    flag aSign;
    int16 aExp, zExp;
    bits32 aSig, zSig;
    bits64 rem, term;

    aSig = FUNC2( a );
    aExp = FUNC1( a );
    aSign = FUNC3( a );
    if ( aExp == 0xFF ) {
        if ( aSig ) return FUNC5( a, 0 );
        if ( ! aSign ) return a;
        roundData->exception |= float_flag_invalid;
        return float32_default_nan;
    }
    if ( aSign ) {
        if ( ( aExp | aSig ) == 0 ) return a;
        roundData->exception |= float_flag_invalid;
        return float32_default_nan;
    }
    if ( aExp == 0 ) {
        if ( aSig == 0 ) return 0;
        FUNC4( aSig, &aExp, &aSig );
    }
    zExp = ( ( aExp - 0x7F )>>1 ) + 0x7E;
    aSig = ( aSig | 0x00800000 )<<8;
    zSig = FUNC0( aExp, aSig ) + 2;
    if ( ( zSig & 0x7F ) <= 5 ) {
        if ( zSig < 2 ) {
            zSig = 0xFFFFFFFF;
        }
        else {
            aSig >>= aExp & 1;
            term = ( (bits64) zSig ) * zSig;
            rem = ( ( (bits64) aSig )<<32 ) - term;
            while ( (sbits64) rem < 0 ) {
                --zSig;
                rem += ( ( (bits64) zSig )<<1 ) | 1;
            }
            zSig |= ( rem != 0 );
        }
    }
    FUNC7( zSig, 1, &zSig );
    return FUNC6( roundData, 0, zExp, zSig );

}