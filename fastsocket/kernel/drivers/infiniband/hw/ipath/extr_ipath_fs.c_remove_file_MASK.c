#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dentry {int /*<<< orphan*/  d_lock; scalar_t__ d_inode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 scalar_t__ FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  dcache_lock ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 struct dentry* FUNC5 (char*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(struct dentry *parent, char *name)
{
	struct dentry *tmp;
	int ret;

	tmp = FUNC5(name, parent, FUNC9(name));

	if (FUNC0(tmp)) {
		ret = FUNC1(tmp);
		goto bail;
	}

	FUNC7(&dcache_lock);
	FUNC7(&tmp->d_lock);
	if (!(FUNC3(tmp) && tmp->d_inode)) {
		FUNC4(tmp);
		FUNC2(tmp);
		FUNC8(&tmp->d_lock);
		FUNC8(&dcache_lock);
		FUNC6(parent->d_inode, tmp);
	} else {
		FUNC8(&tmp->d_lock);
		FUNC8(&dcache_lock);
	}

	ret = 0;
bail:
	/*
	 * We don't expect clients to care about the return value, but
	 * it's there if they need it.
	 */
	return ret;
}