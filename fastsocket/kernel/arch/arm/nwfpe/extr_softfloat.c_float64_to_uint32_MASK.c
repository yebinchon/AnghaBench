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
struct roundingData {int dummy; } ;
typedef  int /*<<< orphan*/  int32 ;
typedef  scalar_t__ int16 ;
typedef  int /*<<< orphan*/  float64 ;
typedef  scalar_t__ flag ;
typedef  int /*<<< orphan*/  bits64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct roundingData*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 

int32 FUNC5( struct roundingData *roundData, float64 a )
{
    flag aSign;
    int16 aExp, shiftCount;
    bits64 aSig;

    aSig = FUNC2( a );
    aExp = FUNC1( a );
    aSign = 0; //extractFloat64Sign( a );
    //if ( ( aExp == 0x7FF ) && aSig ) aSign = 0;
    if ( aExp ) aSig |= FUNC0( 0x0010000000000000 );
    shiftCount = 0x42C - aExp;
    if ( 0 < shiftCount ) FUNC4( aSig, shiftCount, &aSig );
    return FUNC3( roundData, aSign, aSig );
}