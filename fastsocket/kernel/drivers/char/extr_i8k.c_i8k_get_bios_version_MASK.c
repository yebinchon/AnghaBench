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
struct smm_regs {int eax; } ;

/* Variables and functions */
 int I8K_SMM_BIOS_VERSION ; 
 scalar_t__ FUNC0 (struct smm_regs*) ; 

__attribute__((used)) static int FUNC1(void)
{
	struct smm_regs regs = { .eax = I8K_SMM_BIOS_VERSION, };

	return FUNC0(&regs) ? : regs.eax;
}