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
 int /*<<< orphan*/ * intr_flags ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(unsigned int flags)
{
	int i;
	FUNC0("dt3k: intr_flags:");
	for (i = 0; i < 8; i++) {
		if (flags & (1 << i)) {
			FUNC0(" %s", intr_flags[i]);
		}
	}
	FUNC0("\n");
}