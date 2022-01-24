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
struct drv_cmd {int /*<<< orphan*/  mask; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drv_cmd*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (struct drv_cmd*),struct drv_cmd*,int) ; 

__attribute__((used)) static void FUNC5(struct drv_cmd *cmd)
{
	int this_cpu;

	this_cpu = FUNC2();
	if (FUNC0(this_cpu, cmd->mask))
		FUNC1(cmd);
	FUNC4(cmd->mask, do_drv_write, cmd, 1);
	FUNC3();
}