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
struct biosregs {int ax; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct biosregs*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct biosregs*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void)
{
	struct biosregs ireg;

	FUNC0(&ireg);
	ireg.ax = 0x2401;
	FUNC1(0x15, &ireg, NULL);
}