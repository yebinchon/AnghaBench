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
 char* FUNC0 (int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

int FUNC2(int node, char *prop)
{
	char *current_property = "";

	do {
		current_property = FUNC0(node, current_property, NULL);
		if(!FUNC1(current_property, prop))
		   return 1;
	} while (*current_property);
	return 0;
}