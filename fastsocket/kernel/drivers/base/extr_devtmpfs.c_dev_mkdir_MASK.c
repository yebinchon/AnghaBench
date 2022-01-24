#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* dentry; } ;
struct nameidata {TYPE_4__ path; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  mode_t ;
struct TYPE_8__ {int /*<<< orphan*/  i_mutex; } ;
struct TYPE_7__ {int /*<<< orphan*/  mnt_root; } ;
struct TYPE_6__ {TYPE_3__* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  LOOKUP_PARENT ; 
 int FUNC1 (struct dentry*) ; 
 TYPE_2__* dev_mnt ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (struct nameidata*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int FUNC6 (TYPE_3__*,struct dentry*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_2__*,char const*,int /*<<< orphan*/ ,struct nameidata*) ; 

__attribute__((used)) static int FUNC8(const char *name, mode_t mode)
{
	struct nameidata nd;
	struct dentry *dentry;
	int err;

	err = FUNC7(dev_mnt->mnt_root, dev_mnt,
			      name, LOOKUP_PARENT, &nd);
	if (err)
		return err;

	dentry = FUNC3(&nd, 1);
	if (!FUNC0(dentry)) {
		err = FUNC6(nd.path.dentry->d_inode, dentry, mode);
		FUNC2(dentry);
	} else {
		err = FUNC1(dentry);
	}
	FUNC4(&nd.path.dentry->d_inode->i_mutex);

	FUNC5(&nd.path);
	return err;
}