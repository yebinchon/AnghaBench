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
 unsigned long chipavail ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long) ; 

unsigned long FUNC1(void)
{
#ifdef DEBUG
	printk("amiga_chip_avail : %ld bytes\n", chipavail);
#endif
	return chipavail;
}