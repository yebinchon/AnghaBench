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
struct rt2x00debug_intf {int /*<<< orphan*/  frame_dump_flags; } ;
struct inode {struct rt2x00debug_intf* i_private; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FRAME_DUMP_FILE_OPEN ; 
 int FUNC0 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct file*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file)
{
	struct rt2x00debug_intf *intf = inode->i_private;
	int retval;

	retval = FUNC0(inode, file);
	if (retval)
		return retval;

	if (FUNC2(FRAME_DUMP_FILE_OPEN, &intf->frame_dump_flags)) {
		FUNC1(inode, file);
		return -EBUSY;
	}

	return 0;
}