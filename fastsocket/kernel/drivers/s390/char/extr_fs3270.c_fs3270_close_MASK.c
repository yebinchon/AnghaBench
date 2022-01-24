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
struct fs3270 {int /*<<< orphan*/  view; int /*<<< orphan*/ * fs_pid; } ;
struct file {struct fs3270* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct inode *inode, struct file *filp)
{
	struct fs3270 *fp;

	fp = filp->private_data;
	filp->private_data = NULL;
	if (fp) {
		FUNC0(fp->fs_pid);
		fp->fs_pid = NULL;
		FUNC3(&fp->view);
		FUNC2(&fp->view);
		FUNC1(&fp->view);
	}
	return 0;
}