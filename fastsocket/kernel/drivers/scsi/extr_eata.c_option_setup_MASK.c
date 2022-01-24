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
 int MAX_INT_PARAM ; 
 int /*<<< orphan*/  FUNC0 (char*,int*) ; 
 scalar_t__ FUNC1 (char) ; 
 int FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,char) ; 

__attribute__((used)) static int FUNC4(char *str)
{
	int ints[MAX_INT_PARAM];
	char *cur = str;
	int i = 1;

	while (cur && FUNC1(*cur) && i <= MAX_INT_PARAM) {
		ints[i++] = FUNC2(cur, NULL, 0);

		if ((cur = FUNC3(cur, ',')) != NULL)
			cur++;
	}

	ints[0] = i - 1;
	FUNC0(cur, ints);
	return 1;
}