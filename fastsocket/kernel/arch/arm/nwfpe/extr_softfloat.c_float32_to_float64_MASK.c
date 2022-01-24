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
typedef  int int16 ;
typedef  int /*<<< orphan*/  float64 ;
typedef  int /*<<< orphan*/  float32 ;
typedef  int /*<<< orphan*/  flag ;
typedef  int bits64 ;
typedef  scalar_t__ bits32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 

float64 FUNC7( float32 a )
{
    flag aSign;
    int16 aExp;
    bits32 aSig;

    aSig = FUNC2( a );
    aExp = FUNC1( a );
    aSign = FUNC3( a );
    if ( aExp == 0xFF ) {
        if ( aSig ) return FUNC0( FUNC4( a ) );
        return FUNC6( aSign, 0x7FF, 0 );
    }
    if ( aExp == 0 ) {
        if ( aSig == 0 ) return FUNC6( aSign, 0, 0 );
        FUNC5( aSig, &aExp, &aSig );
        --aExp;
    }
    return FUNC6( aSign, aExp + 0x380, ( (bits64) aSig )<<29 );

}