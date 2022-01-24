#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int sp; int ap; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* syscall_command_table ; 

__attribute__((used)) static int FUNC1(int cmd)
{
	int i;
	int ret = -1;

	for (i = 0; i < FUNC0(syscall_command_table); i++) {
		if (cmd == syscall_command_table[i].sp)
			return syscall_command_table[i].ap;
	}

	return ret;
}