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
typedef  scalar_t__ sbits64 ;
typedef  int bits64 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int,int*,int*) ; 

__attribute__((used)) static bits64 FUNC5( bits64 a0, bits64 a1, bits64 b )
{
    bits64 b0, b1;
    bits64 rem0, rem1, term0, term1;
    bits64 z;
    if ( b <= a0 ) return FUNC0( 0xFFFFFFFFFFFFFFFF );
    b0 = b>>32;  /* hence b0 is 32 bits wide now */
    if ( b0<<32 <= a0 ) {
        z = FUNC0( 0xFFFFFFFF00000000 );
    }  else {
        z = a0;
        FUNC2( z, b0 );
        z <<= 32;
    }
    FUNC3( b, z, &term0, &term1 );
    FUNC4( a0, a1, term0, term1, &rem0, &rem1 );
    while ( ( (sbits64) rem0 ) < 0 ) {
        z -= FUNC0( 0x100000000 );
        b1 = b<<32;
        FUNC1( rem0, rem1, b0, b1, &rem0, &rem1 );
    }
    rem0 = ( rem0<<32 ) | ( rem1>>32 );
    if ( b0<<32 <= rem0 ) {
        z |= 0xFFFFFFFF;
    } else {
        FUNC2( rem0, b0 );
        z |= rem0;
    }
    return z;

}