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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2( u16 io_base )
{
	u32 data0, data1;
	int	i;

	FUNC1( "TLAN:   Contents of internal registers for io base 0x%04hx.\n",
		io_base );
	FUNC1( "TLAN:      Off.  +0         +4\n" );
	for ( i = 0; i < 0x4C; i+= 8 ) {
		data0 = FUNC0( io_base, i );
		data1 = FUNC0( io_base, i + 0x4 );
		FUNC1( "TLAN:      0x%02x  0x%08x 0x%08x\n", i, data0, data1 );
	}

}