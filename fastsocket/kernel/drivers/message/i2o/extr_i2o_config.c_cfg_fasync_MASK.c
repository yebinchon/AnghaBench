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
struct i2o_cfg_info {scalar_t__ q_id; int /*<<< orphan*/  fasync; struct i2o_cfg_info* next; } ;
struct file {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 int EBADF ; 
 int FUNC0 (int,struct file*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct i2o_cfg_info* open_files ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(int fd, struct file *fp, int on)
{
	ulong id = (ulong) fp->private_data;
	struct i2o_cfg_info *p;
	int ret = -EBADF;

	FUNC1();
	for (p = open_files; p; p = p->next)
		if (p->q_id == id)
			break;

	if (p)
		ret = FUNC0(fd, fp, on, &p->fasync);
	FUNC2();
	return ret;
}