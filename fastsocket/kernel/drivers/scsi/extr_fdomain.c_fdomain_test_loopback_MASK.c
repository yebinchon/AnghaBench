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

/* Variables and functions */
 scalar_t__ Read_Loopback ; 
 scalar_t__ Write_Loopback ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 scalar_t__ port_base ; 

__attribute__((used)) static int FUNC2( void )
{
   int i;
   int result;

   for (i = 0; i < 255; i++) {
      FUNC1( i, port_base + Write_Loopback );
      result = FUNC0( port_base + Read_Loopback );
      if (i != result)
	    return 1;
   }
   return 0;
}