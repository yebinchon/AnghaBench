#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  board_type; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* octeon_bootinfo ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char*) ; 

const char *FUNC4(void)
{
	static char name[80];
	FUNC3(name, "%s (%s)",
		FUNC0(octeon_bootinfo->board_type),
		FUNC1(FUNC2()));
	return name;
}