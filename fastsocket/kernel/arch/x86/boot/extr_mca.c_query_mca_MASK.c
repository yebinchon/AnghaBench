#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct biosregs {int ah; int eflags; int /*<<< orphan*/  bx; int /*<<< orphan*/  es; } ;
struct TYPE_2__ {int /*<<< orphan*/  sys_desc_table; } ;

/* Variables and functions */
 int X86_EFLAGS_CF ; 
 TYPE_1__ boot_params ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct biosregs*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct biosregs*,struct biosregs*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(void)
{
	struct biosregs ireg, oreg;
	u16 len;

	FUNC1(&ireg);
	ireg.ah = 0xc0;
	FUNC2(0x15, &ireg, &oreg);

	if (oreg.eflags & X86_EFLAGS_CF)
		return -1;	/* No MCA present */

	FUNC4(oreg.es);
	len = FUNC3(oreg.bx);

	if (len > sizeof(boot_params.sys_desc_table))
		len = sizeof(boot_params.sys_desc_table);

	FUNC0(&boot_params.sys_desc_table, oreg.bx, len);
	return 0;
}