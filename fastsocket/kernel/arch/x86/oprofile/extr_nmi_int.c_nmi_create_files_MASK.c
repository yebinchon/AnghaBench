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
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {int /*<<< orphan*/  extra; int /*<<< orphan*/  user; int /*<<< orphan*/  kernel; int /*<<< orphan*/  unit_mask; int /*<<< orphan*/  count; int /*<<< orphan*/  event; int /*<<< orphan*/  enabled; } ;
struct TYPE_3__ {unsigned int num_virt_counters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* counter_config ; 
 TYPE_1__* model ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,struct dentry*,char*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC3 (struct super_block*,struct dentry*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct super_block *sb, struct dentry *root)
{
	unsigned int i;

	for (i = 0; i < model->num_virt_counters; ++i) {
		struct dentry *dir;
		char buf[4];

		/* quick little hack to _not_ expose a counter if it is not
		 * available for use.  This should protect userspace app.
		 * NOTE:  assumes 1:1 mapping here (that counters are organized
		 *        sequentially in their struct assignment).
		 */
		if (!FUNC0(FUNC1(i)))
			continue;

		FUNC4(buf,  sizeof(buf), "%d", i);
		dir = FUNC3(sb, root, buf);
		FUNC2(sb, dir, "enabled", &counter_config[i].enabled);
		FUNC2(sb, dir, "event", &counter_config[i].event);
		FUNC2(sb, dir, "count", &counter_config[i].count);
		FUNC2(sb, dir, "unit_mask", &counter_config[i].unit_mask);
		FUNC2(sb, dir, "kernel", &counter_config[i].kernel);
		FUNC2(sb, dir, "user", &counter_config[i].user);
		FUNC2(sb, dir, "extra", &counter_config[i].extra);
	}

	return 0;
}