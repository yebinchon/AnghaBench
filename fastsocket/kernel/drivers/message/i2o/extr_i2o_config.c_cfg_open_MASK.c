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
struct i2o_cfg_info {struct i2o_cfg_info* next; scalar_t__ q_lost; scalar_t__ q_out; scalar_t__ q_in; scalar_t__ q_len; scalar_t__ q_id; int /*<<< orphan*/ * fasync; struct file* fp; } ;
struct file {void* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  i2o_cfg_info_id ; 
 int /*<<< orphan*/  i2o_config_lock ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct i2o_cfg_info* open_files ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct i2o_cfg_info *tmp =
	    (struct i2o_cfg_info *)FUNC0(sizeof(struct i2o_cfg_info),
					   GFP_KERNEL);
	unsigned long flags;

	if (!tmp)
		return -ENOMEM;

	FUNC1();
	file->private_data = (void *)(i2o_cfg_info_id++);
	tmp->fp = file;
	tmp->fasync = NULL;
	tmp->q_id = (ulong) file->private_data;
	tmp->q_len = 0;
	tmp->q_in = 0;
	tmp->q_out = 0;
	tmp->q_lost = 0;
	tmp->next = open_files;

	FUNC2(&i2o_config_lock, flags);
	open_files = tmp;
	FUNC3(&i2o_config_lock, flags);
	FUNC4();

	return 0;
}