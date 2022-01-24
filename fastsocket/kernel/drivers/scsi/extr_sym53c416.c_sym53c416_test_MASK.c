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
 int CE ; 
 scalar_t__ COMMAND_REG ; 
 int EIE ; 
 int EMPTY ; 
 int FIE ; 
 int FULL ; 
 int NOOP ; 
 int OUE ; 
 scalar_t__ PIO_INT_REG ; 
 int RESET_CHIP ; 
 scalar_t__ TC_HIGH ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(int base)
{
	FUNC1(RESET_CHIP, base + COMMAND_REG);
	FUNC1(NOOP, base + COMMAND_REG);
	if(FUNC0(base + COMMAND_REG) != NOOP)
		return 0;
	if(!FUNC0(base + TC_HIGH) || FUNC0(base + TC_HIGH) == 0xFF)
		return 0;
	if((FUNC0(base + PIO_INT_REG) & (FULL | EMPTY | CE | OUE | FIE | EIE)) != EMPTY)
		return 0;
	return 1;
}