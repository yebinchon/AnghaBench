#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_5__* dentry; int /*<<< orphan*/  mnt; } ;
struct TYPE_8__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct nameidata {TYPE_4__ path; TYPE_1__ last; } ;
struct kstat {int mode; } ;
struct iattr {int ia_mode; int ia_valid; scalar_t__ ia_gid; scalar_t__ ia_uid; } ;
struct device {int dummy; } ;
struct dentry {TYPE_6__* d_inode; } ;
struct cred {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/  i_mutex; } ;
struct TYPE_12__ {TYPE_2__* d_inode; } ;
struct TYPE_10__ {int /*<<< orphan*/  mnt_root; } ;
struct TYPE_9__ {int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 int ATTR_GID ; 
 int ATTR_MODE ; 
 int ATTR_UID ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int /*<<< orphan*/  LOOKUP_PARENT ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 TYPE_3__* dev_mnt ; 
 scalar_t__ FUNC3 (struct device*,TYPE_6__*,struct kstat*) ; 
 char* FUNC4 (struct device*,int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  init_cred ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 struct dentry* FUNC7 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*,struct iattr*) ; 
 struct cred* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (struct cred const*) ; 
 scalar_t__ FUNC15 (char const*,char) ; 
 int FUNC16 (int /*<<< orphan*/ ,struct dentry*,struct kstat*) ; 
 int FUNC17 (int /*<<< orphan*/ ,TYPE_3__*,char const*,int /*<<< orphan*/ ,struct nameidata*) ; 
 int FUNC18 (TYPE_2__*,struct dentry*) ; 

int FUNC19(struct device *dev)
{
	const char *tmp = NULL;
	const char *nodename;
	const struct cred *curr_cred;
	struct nameidata nd;
	struct dentry *dentry;
	struct kstat stat;
	int deleted = 1;
	int err;

	if (!dev_mnt)
		return 0;

	nodename = FUNC4(dev, NULL, &tmp);
	if (!nodename)
		return -ENOMEM;

	curr_cred = FUNC12(&init_cred);
	err = FUNC17(dev_mnt->mnt_root, dev_mnt,
			      nodename, LOOKUP_PARENT, &nd);
	if (err)
		goto out;

	FUNC9(&nd.path.dentry->d_inode->i_mutex, I_MUTEX_PARENT);
	dentry = FUNC7(nd.last.name, nd.path.dentry, nd.last.len);
	if (!FUNC0(dentry)) {
		if (dentry->d_inode) {
			err = FUNC16(nd.path.mnt, dentry, &stat);
			if (!err && FUNC3(dev, dentry->d_inode, &stat)) {
				struct iattr newattrs;
				/*
				 * before unlinking this node, reset permissions
				 * of possible references like hardlinks
				 */
				newattrs.ia_uid = 0;
				newattrs.ia_gid = 0;
				newattrs.ia_mode = stat.mode & ~0777;
				newattrs.ia_valid =
					ATTR_UID|ATTR_GID|ATTR_MODE;
				FUNC8(&dentry->d_inode->i_mutex);
				FUNC11(dentry, &newattrs);
				FUNC10(&dentry->d_inode->i_mutex);
				err = FUNC18(nd.path.dentry->d_inode,
						 dentry);
				if (!err || err == -ENOENT)
					deleted = 1;
			}
		} else {
			err = -ENOENT;
		}
		FUNC5(dentry);
	} else {
		err = FUNC1(dentry);
	}
	FUNC10(&nd.path.dentry->d_inode->i_mutex);

	FUNC13(&nd.path);
	if (deleted && FUNC15(nodename, '/'))
		FUNC2(nodename);
out:
	FUNC6(tmp);
	FUNC14(curr_cred);
	return err;
}