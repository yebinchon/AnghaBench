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
 int /*<<< orphan*/  BREAK_INSTR_SIZE ; 
 int FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 

int FUNC1(unsigned long addr, char *bundle)
{
	return FUNC0((char *)addr, bundle, BREAK_INSTR_SIZE);
}