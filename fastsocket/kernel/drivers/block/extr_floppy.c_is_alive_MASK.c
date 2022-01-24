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
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int command_status ; 
 int /*<<< orphan*/  fd_timeout ; 
 int /*<<< orphan*/  fdc_busy ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(const char *message)
{
	/* this routine checks whether the floppy driver is "alive" */
	if (FUNC1(0, &fdc_busy) && command_status < 2
	    && !FUNC2(&fd_timeout)) {
		FUNC0("timeout handler died: %s\n", message);
	}
}