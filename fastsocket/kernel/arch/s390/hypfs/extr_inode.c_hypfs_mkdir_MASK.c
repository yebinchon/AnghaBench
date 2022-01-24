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
struct super_block {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int DIR_MODE ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 struct dentry* FUNC2 (struct super_block*,struct dentry*,char const*,int /*<<< orphan*/ *,int) ; 

struct dentry *FUNC3(struct super_block *sb, struct dentry *parent,
			   const char *name)
{
	struct dentry *dentry;

	dentry = FUNC2(sb, parent, name, NULL, S_IFDIR | DIR_MODE);
	if (FUNC0(dentry))
		return dentry;
	FUNC1(dentry);
	return dentry;
}