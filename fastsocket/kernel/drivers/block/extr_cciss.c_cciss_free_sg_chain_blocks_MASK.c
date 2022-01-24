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
typedef  int /*<<< orphan*/ **** SGDescriptor_struct ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ******) ; 

__attribute__((used)) static void FUNC1(SGDescriptor_struct **cmd_sg_list,
	int nr_cmds)
{
	int i;

	if (!cmd_sg_list)
		return;
	for (i = 0; i < nr_cmds; i++) {
		FUNC0(&cmd_sg_list[i]);
		cmd_sg_list[i] = NULL;
	}
	FUNC0(cmd_sg_list);
}