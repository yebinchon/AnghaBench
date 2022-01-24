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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(char *dst, char *args[])
{
	unsigned int i, len = 0;

	for (i = 0; args[i]; i++) {
		if (i) {
			FUNC0(dst+len, " ");
			len++;
		}
		FUNC1(dst+len, args[i]);
		len += FUNC2(args[i]);
	}
	/* In case it's empty. */
	dst[len] = '\0';
}