#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct inode {unsigned int i_ino; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct dentry {int /*<<< orphan*/  d_inode; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_8__ {int /*<<< orphan*/  mnt_sb; } ;
struct TYPE_7__ {TYPE_1__* d_inode; } ;
struct TYPE_6__ {int mode; int /*<<< orphan*/  gid; scalar_t__ setgid; int /*<<< orphan*/  uid; scalar_t__ setuid; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int S_IFCHR ; 
 TYPE_4__* capifs_mnt ; 
 TYPE_3__* capifs_root ; 
 TYPE_2__ config ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 struct dentry* FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(unsigned int number, dev_t device)
{
	struct dentry *dentry;
	struct inode *inode = FUNC7(capifs_mnt->mnt_sb);
	if (!inode)
		return;
	inode->i_ino = number+2;

	dentry = FUNC4(number);

	/* config contents is protected by root's i_mutex */
	inode->i_uid = config.setuid ? config.uid : FUNC2();
	inode->i_gid = config.setgid ? config.gid : FUNC1();
	inode->i_mtime = inode->i_atime = inode->i_ctime = CURRENT_TIME;
	FUNC5(inode, S_IFCHR|config.mode, device);
	//inode->i_op = &capifs_file_inode_operations;

	if (!FUNC0(dentry) && !dentry->d_inode)
		FUNC3(dentry, inode);
	FUNC6(&capifs_root->d_inode->i_mutex);
}