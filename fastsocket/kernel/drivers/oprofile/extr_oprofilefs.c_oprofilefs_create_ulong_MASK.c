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
 int FUNC0 (struct super_block*,struct dentry*,char const*,int /*<<< orphan*/ *,int,unsigned long*) ; 
 int /*<<< orphan*/  ulong_fops ; 

int FUNC1(struct super_block *sb, struct dentry *root,
	char const *name, unsigned long *val)
{
	return FUNC0(sb, root, name,
					&ulong_fops, 0644, val);
}