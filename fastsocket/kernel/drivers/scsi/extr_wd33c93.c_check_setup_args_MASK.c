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
 int MAX_SETUP_ARGS ; 
 char** setup_args ; 
 int* setup_used ; 
 int FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC3(char *key, int *flags, int *val, char *buf)
{
	int x;
	char *cp;

	for (x = 0; x < MAX_SETUP_ARGS; x++) {
		if (setup_used[x])
			continue;
		if (!FUNC2(setup_args[x], key, FUNC1(key)))
			break;
		if (!FUNC2(setup_args[x], "next", FUNC1("next")))
			return 0;
	}
	if (x == MAX_SETUP_ARGS)
		return 0;
	setup_used[x] = 1;
	cp = setup_args[x] + FUNC1(key);
	*val = -1;
	if (*cp != ':')
		return ++x;
	cp++;
	if ((*cp >= '0') && (*cp <= '9')) {
		*val = FUNC0(cp, NULL, 0);
	}
	return ++x;
}