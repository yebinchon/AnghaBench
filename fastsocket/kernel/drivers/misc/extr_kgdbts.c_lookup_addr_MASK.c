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
 scalar_t__ do_fork ; 
 int /*<<< orphan*/  hw_break_val ; 
 scalar_t__ kgdbts_break_test ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ sys_open ; 

__attribute__((used)) static unsigned long FUNC1(char *arg)
{
	unsigned long addr = 0;

	if (!FUNC0(arg, "kgdbts_break_test"))
		addr = (unsigned long)kgdbts_break_test;
	else if (!FUNC0(arg, "sys_open"))
		addr = (unsigned long)sys_open;
	else if (!FUNC0(arg, "do_fork"))
		addr = (unsigned long)do_fork;
	else if (!FUNC0(arg, "hw_break_val"))
		addr = (unsigned long)&hw_break_val;
	return addr;
}