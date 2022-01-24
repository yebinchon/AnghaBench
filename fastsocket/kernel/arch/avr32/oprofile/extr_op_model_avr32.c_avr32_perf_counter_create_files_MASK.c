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
struct super_block {int dummy; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  filename ;
struct TYPE_2__ {int /*<<< orphan*/  unit_mask; int /*<<< orphan*/  user; int /*<<< orphan*/  kernel; int /*<<< orphan*/  count; int /*<<< orphan*/  event; int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 unsigned int NR_counter ; 
 TYPE_1__* counter ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*,struct dentry*,char*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC1 (struct super_block*,struct dentry*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct super_block *sb,
		struct dentry *root)
{
	struct dentry *dir;
	unsigned int i;
	char filename[4];

	for (i = 0; i < NR_counter; i++) {
		FUNC2(filename, sizeof(filename), "%u", i);
		dir = FUNC1(sb, root, filename);

		FUNC0(sb, dir, "enabled",
				&counter[i].enabled);
		FUNC0(sb, dir, "event",
				&counter[i].event);
		FUNC0(sb, dir, "count",
				&counter[i].count);

		/* Dummy entries */
		FUNC0(sb, dir, "kernel",
				&counter[i].kernel);
		FUNC0(sb, dir, "user",
				&counter[i].user);
		FUNC0(sb, dir, "unit_mask",
				&counter[i].unit_mask);
	}

	return 0;
}