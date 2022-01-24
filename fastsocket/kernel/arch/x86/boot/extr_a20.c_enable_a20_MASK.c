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
 int A20_ENABLE_LOOPS ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(void)
{
       int loops = A20_ENABLE_LOOPS;
       int kbc_err;

       while (loops--) {
	       /* First, check to see if A20 is already enabled
		  (legacy free, etc.) */
	       if (FUNC1())
		       return 0;
	       
	       /* Next, try the BIOS (INT 0x15, AX=0x2401) */
	       FUNC3();
	       if (FUNC1())
		       return 0;
	       
	       /* Try enabling A20 through the keyboard controller */
	       kbc_err = FUNC2();

	       if (FUNC1())
		       return 0; /* BIOS worked, but with delayed reaction */
	
	       if (!kbc_err) {
		       FUNC5();
		       if (FUNC0())
			       return 0;
	       }
	       
	       /* Finally, try enabling the "fast A20 gate" */
	       FUNC4();
	       if (FUNC0())
		       return 0;
       }
       
       return -1;
}