#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct file_operations {int dummy; } ;
struct dentry {TYPE_1__* d_inode; } ;
typedef  int /*<<< orphan*/  mode_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int FUNC2 (TYPE_1__*,struct dentry*,int /*<<< orphan*/ ,struct file_operations const*,void*) ; 
 struct dentry* FUNC3 (char const*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

__attribute__((used)) static int FUNC7(const char *name, mode_t mode,
		       struct dentry *parent, struct dentry **dentry,
		       const struct file_operations *fops, void *data)
{
	int error;

	*dentry = NULL;
	FUNC4(&parent->d_inode->i_mutex);
	*dentry = FUNC3(name, parent, FUNC6(name));
	if (!FUNC0(*dentry))
		error = FUNC2(parent->d_inode, *dentry,
				      mode, fops, data);
	else
		error = FUNC1(*dentry);
	FUNC5(&parent->d_inode->i_mutex);

	return error;
}