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
struct super_block {int dummy; } ;
struct inode {int i_mode; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct inode* FUNC2 (struct super_block*) ; 

__attribute__((used)) static struct inode *
FUNC3(struct super_block *sb, int mode)
{
	struct inode *inode;

	inode = FUNC2(sb);
	if (!inode)
		goto out;

	inode->i_mode = mode;
	inode->i_uid = FUNC1();
	inode->i_gid = FUNC0();
	inode->i_atime = inode->i_mtime = inode->i_ctime = CURRENT_TIME;
out:
	return inode;
}