#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  unit_mask; int /*<<< orphan*/  exl; int /*<<< orphan*/  user; int /*<<< orphan*/  kernel; int /*<<< orphan*/  count; int /*<<< orphan*/  event; int /*<<< orphan*/  enabled; } ;
struct TYPE_3__ {int num_counters; } ;

/* Variables and functions */
 TYPE_2__* ctr ; 
 TYPE_1__* model ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*,struct dentry*,char*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC1 (struct super_block*,struct dentry*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC3(struct super_block *sb, struct dentry *root)
{
	int i;

	for (i = 0; i < model->num_counters; ++i) {
		struct dentry *dir;
		char buf[4];

		FUNC2(buf, sizeof buf, "%d", i);
		dir = FUNC1(sb, root, buf);

		FUNC0(sb, dir, "enabled", &ctr[i].enabled);
		FUNC0(sb, dir, "event", &ctr[i].event);
		FUNC0(sb, dir, "count", &ctr[i].count);
		FUNC0(sb, dir, "kernel", &ctr[i].kernel);
		FUNC0(sb, dir, "user", &ctr[i].user);
		FUNC0(sb, dir, "exl", &ctr[i].exl);
		/* Dummy.  */
		FUNC0(sb, dir, "unit_mask", &ctr[i].unit_mask);
	}

	return 0;
}