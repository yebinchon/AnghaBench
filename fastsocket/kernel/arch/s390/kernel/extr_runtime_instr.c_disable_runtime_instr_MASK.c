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
struct TYPE_2__ {int /*<<< orphan*/  mask; } ;
struct pt_regs {TYPE_1__ psw; } ;

/* Variables and functions */
 int /*<<< orphan*/  PSW_MASK_RI ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  runtime_instr_empty_cb ; 
 struct pt_regs* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	struct pt_regs *regs = FUNC1(current);

	FUNC0(&runtime_instr_empty_cb);

	/*
	 * Make sure the RI bit is deleted from the PSW. If the user did not
	 * switch off RI before the system call the process will get a
	 * specification exception otherwise.
	 */
	regs->psw.mask &= ~PSW_MASK_RI;
}