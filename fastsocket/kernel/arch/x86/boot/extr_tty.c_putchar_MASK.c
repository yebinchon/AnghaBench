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
struct biosregs {int bx; int cx; int ah; int al; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct biosregs*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct biosregs*,int /*<<< orphan*/ *) ; 

void __attribute__((section(".inittext"))) FUNC2(int ch)
{
	struct biosregs ireg;

	if (ch == '\n')
		FUNC2('\r');	/* \n -> \r\n */

	FUNC0(&ireg);
	ireg.bx = 0x0007;
	ireg.cx = 0x0001;
	ireg.ah = 0x0e;
	ireg.al = ch;
	FUNC1(0x10, &ireg, NULL);
}