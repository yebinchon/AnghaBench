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
 scalar_t__ IDT434_REG_BASE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ RST ; 
 void FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(char *command)
{
	/* just jump to the reset vector */
	FUNC2(0x80000001, IDT434_REG_BASE + RST);
	((void (*)(void)) FUNC0(0x1FC00000u))();
}