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
struct super_block {struct hypfs_sb_info* s_fs_info; scalar_t__ s_root; } ;
struct hypfs_sb_info {scalar_t__ update_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct hypfs_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 

__attribute__((used)) static void FUNC4(struct super_block *sb)
{
	struct hypfs_sb_info *sb_info = sb->s_fs_info;

	if (sb->s_root)
		FUNC0(sb->s_root);
	if (sb_info->update_file)
		FUNC1(sb_info->update_file);
	FUNC2(sb->s_fs_info);
	sb->s_fs_info = NULL;
	FUNC3(sb);
}