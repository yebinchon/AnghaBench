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
 char FUNC0 (char) ; 

__attribute__((used)) static char *FUNC1(char *name)
{
	if (name[0] == '.') {
		name[0] = '_';
                name[1] = FUNC0(name[1]);
	}
	return name;
}