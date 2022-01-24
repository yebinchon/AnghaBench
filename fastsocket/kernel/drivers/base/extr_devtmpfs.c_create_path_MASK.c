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
struct TYPE_8__ {int /*<<< orphan*/  i_mutex; } ;
struct TYPE_7__ {int /*<<< orphan*/  mnt_root; } ;
struct TYPE_6__ {TYPE_3__* d_inode; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  LOOKUP_PARENT ; 
 int FUNC1 (char*,int) ; 
 TYPE_2__* dev_mnt ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC5 (struct nameidata*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 char* FUNC8 (char*,char) ; 
 int FUNC9 (TYPE_3__*,struct dentry*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,TYPE_2__*,char*,int /*<<< orphan*/ ,struct nameidata*) ; 

__attribute__((used)) static int FUNC11(const char *nodepath)
{
	char *path;
	struct nameidata nd;
	int err = 0;

	path = FUNC4(nodepath, GFP_KERNEL);
	if (!path)
		return -ENOMEM;

	err = FUNC10(dev_mnt->mnt_root, dev_mnt,
			      path, LOOKUP_PARENT, &nd);
	if (err == 0) {
		struct dentry *dentry;

		/* create directory right away */
		dentry = FUNC5(&nd, 1);
		if (!FUNC0(dentry)) {
			err = FUNC9(nd.path.dentry->d_inode,
					dentry, 0755);
			FUNC2(dentry);
		}
		FUNC6(&nd.path.dentry->d_inode->i_mutex);

		FUNC7(&nd.path);
	} else if (err == -ENOENT) {
		char *s;

		/* parent directories do not exist, create them */
		s = path;
		while (1) {
			s = FUNC8(s, '/');
			if (!s)
				break;
			s[0] = '\0';
			err = FUNC1(path, 0755);
			if (err && err != -EEXIST)
				break;
			s[0] = '/';
			s++;
		}
	}

	FUNC3(path);
	return err;
}