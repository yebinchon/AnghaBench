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
typedef  scalar_t__ int16 ;
typedef  int /*<<< orphan*/  float64 ;
typedef  int /*<<< orphan*/  float32 ;
typedef  int /*<<< orphan*/  flag ;
typedef  int bits64 ;
typedef  int bits32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int*) ; 

float32 FUNC5(float64 a)
{
    flag aSign;
    int16 aExp;
    bits64 aSig;
    bits32 zSig;

    aSig = FUNC1( a );
    aExp = FUNC0( a );
    aSign = FUNC2( a );

    FUNC4( aSig, 22, &aSig );
    zSig = aSig;
    if ( aExp || zSig ) {
        zSig |= 0x40000000;
        aExp -= 0x381;
    }
    return FUNC3(aSign, aExp, zSig);
}