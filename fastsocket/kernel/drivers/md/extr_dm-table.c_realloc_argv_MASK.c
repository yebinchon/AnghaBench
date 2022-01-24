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
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 char** FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char**,char**,unsigned int) ; 

__attribute__((used)) static char **FUNC3(unsigned *array_size, char **old_argv)
{
	char **argv;
	unsigned new_size;

	new_size = *array_size ? *array_size * 2 : 64;
	argv = FUNC1(new_size * sizeof(*argv), GFP_KERNEL);
	if (argv) {
		FUNC2(argv, old_argv, *array_size * sizeof(*argv));
		*array_size = new_size;
	}

	FUNC0(old_argv);
	return argv;
}