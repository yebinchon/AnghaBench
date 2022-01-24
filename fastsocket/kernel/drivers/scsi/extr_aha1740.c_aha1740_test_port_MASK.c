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
 int PORTADDR_ENH ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(unsigned int base)
{
	if ( FUNC1(FUNC0(base)) & PORTADDR_ENH )
		return 1;   /* Okay, we're all set */
	
	FUNC2("aha174x: Board detected, but not in enhanced mode, so disabled it.\n");
	return 0;
}