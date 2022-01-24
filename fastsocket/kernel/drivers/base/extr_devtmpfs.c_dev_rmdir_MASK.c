#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_5__* dentry; } ;
struct TYPE_7__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct nameidata {TYPE_4__ path; TYPE_1__ last; } ;
struct dentry {scalar_t__ d_inode; } ;
struct TYPE_11__ {TYPE_2__* d_inode; } ;
struct TYPE_9__ {int /*<<< orphan*/  mnt_root; } ;
struct TYPE_8__ {int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int /*<<< orphan*/  LOOKUP_PARENT ; 
 int FUNC1 (struct dentry*) ; 
 TYPE_3__* dev_mnt ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_3__*,char const*,int /*<<< orphan*/ ,struct nameidata*) ; 
 int FUNC8 (TYPE_2__*,struct dentry*) ; 

__attribute__((used)) static int FUNC9(const char *name)
{
	struct nameidata nd;
	struct dentry *dentry;
	int err;

	err = FUNC7(dev_mnt->mnt_root, dev_mnt,
			      name, LOOKUP_PARENT, &nd);
	if (err)
		return err;

	FUNC4(&nd.path.dentry->d_inode->i_mutex, I_MUTEX_PARENT);
	dentry = FUNC3(nd.last.name, nd.path.dentry, nd.last.len);
	if (!FUNC0(dentry)) {
		if (dentry->d_inode)
			err = FUNC8(nd.path.dentry->d_inode, dentry);
		else
			err = -ENOENT;
		FUNC2(dentry);
	} else {
		err = FUNC1(dentry);
	}
	FUNC5(&nd.path.dentry->d_inode->i_mutex);

	FUNC6(&nd.path);
	return err;
}