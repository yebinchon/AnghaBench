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
typedef  scalar_t__ ulong ;
struct inode {int dummy; } ;
struct i2o_cfg_info {scalar_t__ q_id; struct i2o_cfg_info* next; } ;
struct file {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  i2o_config_lock ; 
 int /*<<< orphan*/  FUNC0 (struct i2o_cfg_info*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct i2o_cfg_info* open_files ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	ulong id = (ulong) file->private_data;
	struct i2o_cfg_info *p, **q;
	unsigned long flags;

	FUNC1();
	FUNC2(&i2o_config_lock, flags);
	for (q = &open_files; (p = *q) != NULL; q = &p->next) {
		if (p->q_id == id) {
			*q = p->next;
			FUNC0(p);
			break;
		}
	}
	FUNC3(&i2o_config_lock, flags);
	FUNC4();

	return 0;
}