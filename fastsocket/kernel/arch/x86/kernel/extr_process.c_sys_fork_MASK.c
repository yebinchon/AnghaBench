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
struct pt_regs {int /*<<< orphan*/  sp; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGCHLD ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pt_regs*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC1(struct pt_regs *regs)
{
	return FUNC0(SIGCHLD, regs->sp, regs, 0, NULL, NULL);
}