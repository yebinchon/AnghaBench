#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int umode_t ;
typedef  int uid_t ;
struct super_block {TYPE_2__* s_root; } ;
typedef  int gid_t ;
struct TYPE_6__ {int setuid; int setgid; int uid; int gid; int mode; } ;
struct TYPE_5__ {TYPE_1__* d_inode; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int S_IFMT ; 
 TYPE_3__ config ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,char*) ; 
 int FUNC6 (char*,char*,int*,char*) ; 
 char* FUNC7 (char**,char*) ; 

__attribute__((used)) static int FUNC8(struct super_block *s, int *flags, char *data)
{
	int setuid = 0;
	int setgid = 0;
	uid_t uid = 0;
	gid_t gid = 0;
	umode_t mode = 0600;
	char *this_char;
	char *new_opt = FUNC1(data, GFP_KERNEL);

	this_char = NULL;
	while ((this_char = FUNC7(&data, ",")) != NULL) {
		int n;
		char dummy;
		if (!*this_char)
			continue;
		if (FUNC6(this_char, "uid=%i%c", &n, &dummy) == 1) {
			setuid = 1;
			uid = n;
		} else if (FUNC6(this_char, "gid=%i%c", &n, &dummy) == 1) {
			setgid = 1;
			gid = n;
		} else if (FUNC6(this_char, "mode=%o%c", &n, &dummy) == 1)
			mode = n & ~S_IFMT;
		else {
			FUNC0(new_opt);
			FUNC4("capifs: called with bogus options\n");
			return -EINVAL;
		}
	}

	FUNC2(&s->s_root->d_inode->i_mutex);

	FUNC5(s, new_opt);
	config.setuid  = setuid;
	config.setgid  = setgid;
	config.uid     = uid;
	config.gid     = gid;
	config.mode    = mode;

	FUNC3(&s->s_root->d_inode->i_mutex);

	return 0;
}