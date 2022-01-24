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
struct inode {int dummy; } ;
struct file {int f_flags; } ;

/* Variables and functions */
 int EBUSY ; 
 int O_EXCL ; 
 int /*<<< orphan*/  mce_state_lock ; 
 int FUNC0 (struct inode*,struct file*) ; 
 scalar_t__ open_count ; 
 int open_exclu ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file)
{
	FUNC1(&mce_state_lock);

	if (open_exclu || (open_count && (file->f_flags & O_EXCL))) {
		FUNC2(&mce_state_lock);

		return -EBUSY;
	}

	if (file->f_flags & O_EXCL)
		open_exclu = 1;
	open_count++;

	FUNC2(&mce_state_lock);

	return FUNC0(inode, file);
}