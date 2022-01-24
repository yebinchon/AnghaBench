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
struct inode {struct controller* i_private; } ;
struct file {struct ctrl_dbg* private_data; } ;
struct ctrl_dbg {void* data; int /*<<< orphan*/  size; } ;
struct controller {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (struct ctrl_dbg*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct controller*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct controller *ctrl = inode->i_private;
	struct ctrl_dbg *dbg;
	int retval = -ENOMEM;

	FUNC2();
	dbg = FUNC1(sizeof(*dbg), GFP_KERNEL);
	if (!dbg)
		goto exit;
	dbg->data = FUNC1(MAX_OUTPUT, GFP_KERNEL);
	if (!dbg->data) {
		FUNC0(dbg);
		goto exit;
	}
	dbg->size = FUNC3(ctrl, dbg->data, MAX_OUTPUT);
	file->private_data = dbg;
	retval = 0;
exit:
	FUNC4();
	return retval;
}