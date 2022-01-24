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
struct comedi_cmd {int chanlist_len; int /*<<< orphan*/ * chanlist; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const struct comedi_cmd *cmd)
{
	int i;
	for (i = 0; i + 1 < cmd->chanlist_len; i++) {
		if (FUNC1(cmd->chanlist[i + 1]) !=
		    FUNC1(cmd->chanlist[i]) + 1)
			return 0;
		if (FUNC2(cmd->chanlist[i + 1]) !=
		    FUNC2(cmd->chanlist[i]))
			return 0;
		if (FUNC0(cmd->chanlist[i + 1]) != FUNC0(cmd->chanlist[i]))
			return 0;
	}
	return 1;
}