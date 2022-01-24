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
struct inode {int /*<<< orphan*/  i_nlink; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_4__ {TYPE_1__* d_inode; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 TYPE_2__* capifs_root ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(unsigned int number)
{
	struct dentry *dentry = FUNC3(number);

	if (!FUNC0(dentry)) {
		struct inode *inode = dentry->d_inode;
		if (inode) {
			inode->i_nlink--;
			FUNC1(dentry);
			FUNC2(dentry);
		}
		FUNC2(dentry);
	}
	FUNC4(&capifs_root->d_inode->i_mutex);
}