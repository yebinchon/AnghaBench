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
struct TYPE_11__ {TYPE_2__* dentry; } ;
struct nameidata {TYPE_5__ path; } ;
struct device {int /*<<< orphan*/  devt; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct cred {int dummy; } ;
typedef  int mode_t ;
struct TYPE_10__ {int /*<<< orphan*/  i_mutex; } ;
struct TYPE_9__ {int /*<<< orphan*/  mnt_root; } ;
struct TYPE_8__ {TYPE_4__* d_inode; } ;
struct TYPE_7__ {TYPE_3__** i_private; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  LOOKUP_PARENT ; 
 int FUNC1 (struct dentry*) ; 
 int S_IFBLK ; 
 int S_IFCHR ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 TYPE_3__* dev_mnt ; 
 char* FUNC3 (struct device*,int*,char const**) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  init_cred ; 
 scalar_t__ FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 struct dentry* FUNC7 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct cred* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (struct cred const*) ; 
 int FUNC12 (int) ; 
 int FUNC13 (TYPE_4__*,struct dentry*,int,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,TYPE_3__*,char const*,int /*<<< orphan*/ ,struct nameidata*) ; 

int FUNC15(struct device *dev)
{
	const char *tmp = NULL;
	const char *nodename;
	const struct cred *curr_cred;
	mode_t mode = 0;
	struct nameidata nd;
	struct dentry *dentry;
	int err;

	if (!dev_mnt)
		return 0;

	nodename = FUNC3(dev, &mode, &tmp);
	if (!nodename)
		return -ENOMEM;

	if (mode == 0)
		mode = 0600;
	if (FUNC5(dev))
		mode |= S_IFBLK;
	else
		mode |= S_IFCHR;

	curr_cred = FUNC9(&init_cred);
	err = FUNC14(dev_mnt->mnt_root, dev_mnt,
			      nodename, LOOKUP_PARENT, &nd);
	if (err == -ENOENT) {
		/* create missing parent directories */
		FUNC2(nodename);
		err = FUNC14(dev_mnt->mnt_root, dev_mnt,
				      nodename, LOOKUP_PARENT, &nd);
		if (err)
			goto out;
	}

	dentry = FUNC7(&nd, 0);
	if (!FUNC0(dentry)) {
		int umask;

		umask = FUNC12(0000);
		err = FUNC13(nd.path.dentry->d_inode,
				dentry, mode, dev->devt);
		FUNC12(umask);
		/* mark as kernel created inode */
		if (!err)
			dentry->d_inode->i_private = &dev_mnt;
		FUNC4(dentry);
	} else {
		err = FUNC1(dentry);
	}
	FUNC8(&nd.path.dentry->d_inode->i_mutex);

	FUNC10(&nd.path);
out:
	FUNC6(tmp);
	FUNC11(curr_cred);
	return err;
}