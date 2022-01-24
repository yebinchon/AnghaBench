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
 unsigned int FD_SETSIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * main_args ; 

__attribute__((used)) static void __attribute__((noreturn)) FUNC4(void)
{
	unsigned int i;

	/*
	 * Since we don't track all open fds, we simply close everything beyond
	 * stderr.
	 */
	for (i = 3; i < FD_SETSIZE; i++)
		FUNC1(i);

	/* Reset all the devices (kills all threads). */
	FUNC0();

	FUNC3(main_args[0], main_args);
	FUNC2(1, "Could not exec %s", main_args[0]);
}