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
typedef  scalar_t__ u_long ;

/* Variables and functions */
 int Z2RAM_CHUNKSIZE ; 
 scalar_t__ FUNC0 (int,char*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  chip_count ; 
 scalar_t__* z2ram_map ; 
 size_t z2ram_size ; 

__attribute__((used)) static void
FUNC2( void )
{

    while ( FUNC1() > ( Z2RAM_CHUNKSIZE * 4 ) )
    {
	chip_count++;
	z2ram_map[ z2ram_size ] =
	    (u_long)FUNC0( Z2RAM_CHUNKSIZE, "z2ram" );

	if ( z2ram_map[ z2ram_size ] == 0 )
	{
	    break;
	}

	z2ram_size++;
    }
	
    return;
}