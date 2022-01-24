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
typedef  int /*<<< orphan*/  substring_t ;
struct super_block {struct hypfs_sb_info* s_fs_info; } ;
struct hypfs_sb_info {int uid; int gid; } ;

/* Variables and functions */
 int EINVAL ; 
 int MAX_OPT_ARGS ; 
 int /*<<< orphan*/  hypfs_tokens ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
#define  opt_err 130 
#define  opt_gid 129 
#define  opt_uid 128 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (char**,char*) ; 

__attribute__((used)) static int FUNC4(char *options, struct super_block *sb)
{
	char *str;
	substring_t args[MAX_OPT_ARGS];

	if (!options)
		return 0;
	while ((str = FUNC3(&options, ",")) != NULL) {
		int token, option;
		struct hypfs_sb_info *hypfs_info = sb->s_fs_info;

		if (!*str)
			continue;
		token = FUNC1(str, hypfs_tokens, args);
		switch (token) {
		case opt_uid:
			if (FUNC0(&args[0], &option))
				return -EINVAL;
			hypfs_info->uid = option;
			break;
		case opt_gid:
			if (FUNC0(&args[0], &option))
				return -EINVAL;
			hypfs_info->gid = option;
			break;
		case opt_err:
		default:
			FUNC2("%s is not a valid mount option\n", str);
			return -EINVAL;
		}
	}
	return 0;
}