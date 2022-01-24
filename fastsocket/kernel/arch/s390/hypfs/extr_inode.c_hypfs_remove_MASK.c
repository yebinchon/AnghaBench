#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dentry {TYPE_1__* d_inode; struct dentry* d_parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 scalar_t__ FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct dentry*) ; 

__attribute__((used)) static void FUNC8(struct dentry *dentry)
{
	struct dentry *parent;

	parent = dentry->d_parent;
	if (!parent || !parent->d_inode)
		return;
	FUNC4(&parent->d_inode->i_mutex);
	if (FUNC3(dentry)) {
		if (FUNC0(dentry->d_inode->i_mode))
			FUNC6(parent->d_inode, dentry);
		else
			FUNC7(parent->d_inode, dentry);
	}
	FUNC1(dentry);
	FUNC2(dentry);
	FUNC5(&parent->d_inode->i_mutex);
}