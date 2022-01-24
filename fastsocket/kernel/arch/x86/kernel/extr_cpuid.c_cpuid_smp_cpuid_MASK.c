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
struct cpuid_regs {int /*<<< orphan*/  edx; int /*<<< orphan*/  ecx; int /*<<< orphan*/  ebx; int /*<<< orphan*/  eax; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(void *cmd_block)
{
	struct cpuid_regs *cmd = (struct cpuid_regs *)cmd_block;

	FUNC0(cmd->eax, cmd->ecx,
		    &cmd->eax, &cmd->ebx, &cmd->ecx, &cmd->edx);
}