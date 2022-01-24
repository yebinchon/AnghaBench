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
typedef  int u8 ;
struct seq_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  volume_offset ; 

__attribute__((used)) static int FUNC3(struct seq_file *m)
{
	u8 level;

	if (!FUNC0(volume_offset, &level)) {
		FUNC2(m, "level:\t\tunreadable\n");
	} else {
		FUNC2(m, "level:\t\t%d\n", level & 0xf);
		FUNC2(m, "mute:\t\t%s\n", FUNC1(level, 6));
		FUNC2(m, "commands:\tup, down, mute\n");
		FUNC2(m, "commands:\tlevel <level>"
			       " (<level> is 0-15)\n");
	}

	return 0;
}