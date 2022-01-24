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
 int PORTS ; 
 int PORT_PINS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ ** pins ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 

void
FUNC2(void)
{
	int i, j;

	FUNC0();

	for (i = 0; i < PORTS; i++)
	{
		FUNC1("Port %c\n", 'B'+i);
		for (j = 0; j < PORT_PINS; j++)
			FUNC1("  Pin %d = %d\n", j, pins[i][j]);
	}
}