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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(char *str, char *dest)
{
	int i = 0;

	if (str == NULL) {
		FUNC0(dest, 0, 6);
		return;
	}

	for (;;) {
		dest[i++] = (char) FUNC1(str, NULL, 16);
		str += 2;
		if (!*str++ || i == 6)
			break;
	}
}