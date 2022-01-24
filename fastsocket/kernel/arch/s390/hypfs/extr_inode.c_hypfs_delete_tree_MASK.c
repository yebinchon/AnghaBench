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
struct dentry {struct dentry* d_fsdata; } ;

/* Variables and functions */
 struct dentry* hypfs_last_dentry ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 

__attribute__((used)) static void FUNC1(struct dentry *root)
{
	while (hypfs_last_dentry) {
		struct dentry *next_dentry;
		next_dentry = hypfs_last_dentry->d_fsdata;
		FUNC0(hypfs_last_dentry);
		hypfs_last_dentry = next_dentry;
	}
}