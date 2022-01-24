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
struct super_block {int /*<<< orphan*/  s_root; } ;
struct qib_devdata {int unit; int num_pports; int flags; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int QIB_HAS_QSFP ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 struct dentry* FUNC5 (char*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*,char*) ; 
 int FUNC10 (TYPE_1__*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static int FUNC14(struct super_block *sb,
			       struct qib_devdata *dd)
{
	struct dentry *dir, *root;
	char unit[10];
	int ret, i;

	root = FUNC3(sb->s_root);
	FUNC6(&root->d_inode->i_mutex);
	FUNC11(unit, sizeof unit, "%u", dd->unit);
	dir = FUNC5(unit, root, FUNC13(unit));

	if (FUNC0(dir)) {
		ret = FUNC1(dir);
		FUNC8("Lookup of %s failed\n", unit);
		goto bail;
	}

	FUNC9(dir, "counters");
	FUNC9(dir, "counter_names");
	FUNC9(dir, "portcounter_names");
	for (i = 0; i < dd->num_pports; i++) {
		char fname[24];

		FUNC12(fname, "port%dcounters", i + 1);
		FUNC9(dir, fname);
		if (dd->flags & QIB_HAS_QSFP) {
			FUNC12(fname, "qsfp%d", i + 1);
			FUNC9(dir, fname);
		}
	}
	FUNC9(dir, "flash");
	FUNC2(dir);
	ret = FUNC10(root->d_inode, dir);

bail:
	FUNC7(&root->d_inode->i_mutex);
	FUNC4(root);
	return ret;
}