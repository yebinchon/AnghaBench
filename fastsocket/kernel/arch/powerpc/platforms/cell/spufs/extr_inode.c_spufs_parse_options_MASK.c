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
typedef  int /*<<< orphan*/  substring_t ;
struct super_block {int dummy; } ;
struct inode {int i_uid; int i_gid; int i_mode; } ;
struct TYPE_2__ {int debug; } ;

/* Variables and functions */
 int MAX_OPT_ARGS ; 
#define  Opt_debug 131 
#define  Opt_gid 130 
#define  Opt_mode 129 
#define  Opt_uid 128 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  spufs_tokens ; 
 char* FUNC4 (char**,char*) ; 

__attribute__((used)) static int
FUNC5(struct super_block *sb, char *options, struct inode *root)
{
	char *p;
	substring_t args[MAX_OPT_ARGS];

	while ((p = FUNC4(&options, ",")) != NULL) {
		int token, option;

		if (!*p)
			continue;

		token = FUNC2(p, spufs_tokens, args);
		switch (token) {
		case Opt_uid:
			if (FUNC0(&args[0], &option))
				return 0;
			root->i_uid = option;
			break;
		case Opt_gid:
			if (FUNC0(&args[0], &option))
				return 0;
			root->i_gid = option;
			break;
		case Opt_mode:
			if (FUNC1(&args[0], &option))
				return 0;
			root->i_mode = option | S_IFDIR;
			break;
		case Opt_debug:
			FUNC3(sb)->debug = 1;
			break;
		default:
			return 0;
		}
	}
	return 1;
}