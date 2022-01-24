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
struct moveparams {int dummy; } ;

/* Variables and functions */
 scalar_t__ CONFIG_KERNEL_TEXT_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  debugflag ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* output_data ; 

int FUNC4(struct moveparams *mv)
{
#ifdef DEBUGFLAG
	while (!debugflag)
		barrier();
#endif

	output_data = (char *) CONFIG_KERNEL_TEXT_ADDRESS;

	FUNC3();
	FUNC2("Uncompressing Linux... ");
	FUNC1();
	FUNC2("Ok, booting the kernel.\n");
	return 0;
}