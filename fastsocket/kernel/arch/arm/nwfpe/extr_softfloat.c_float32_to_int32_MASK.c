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
typedef  int int16 ;
typedef  int /*<<< orphan*/  float32 ;
typedef  scalar_t__ flag ;
typedef  int bits64 ;
typedef  int bits32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct roundingData*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int*) ; 

int32 FUNC5( struct roundingData *roundData, float32 a )
{
    flag aSign;
    int16 aExp, shiftCount;
    bits32 aSig;
    bits64 zSig;

    aSig = FUNC1( a );
    aExp = FUNC0( a );
    aSign = FUNC2( a );
    if ( ( aExp == 0x7FF ) && aSig ) aSign = 0;
    if ( aExp ) aSig |= 0x00800000;
    shiftCount = 0xAF - aExp;
    zSig = aSig;
    zSig <<= 32;
    if ( 0 < shiftCount ) FUNC4( zSig, shiftCount, &zSig );
    return FUNC3( roundData, aSign, zSig );

}