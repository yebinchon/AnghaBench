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
typedef  int /*<<< orphan*/  float64 ;
typedef  int flag ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  float_flag_invalid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static float64 FUNC4( float64 a, float64 b )
{
    flag aIsNaN, aIsSignalingNaN, bIsNaN, bIsSignalingNaN;

    aIsNaN = FUNC1( a );
    aIsSignalingNaN = FUNC2( a );
    bIsNaN = FUNC1( b );
    bIsSignalingNaN = FUNC2( b );
    a |= FUNC0( 0x0008000000000000 );
    b |= FUNC0( 0x0008000000000000 );
    if ( aIsSignalingNaN | bIsSignalingNaN ) FUNC3( float_flag_invalid );
    if ( aIsNaN ) {
        return ( aIsSignalingNaN & bIsNaN ) ? b : a;
    }
    else {
        return b;
    }

}