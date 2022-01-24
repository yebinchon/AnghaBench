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
 int console_loglevel ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int oops_in_progress ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2(int yes)
{
	if (yes) {
		oops_in_progress = 1;
	} else {
		int loglevel_save = console_loglevel;
		FUNC0();
		oops_in_progress = 0;
		/*
		 * OK, the message is on the console.  Now we call printk()
		 * without oops_in_progress set so that printk will give klogd
		 * a poke.  Hold onto your hats...
		 */
		console_loglevel = 15;
		FUNC1(" ");
		console_loglevel = loglevel_save;
	}
}