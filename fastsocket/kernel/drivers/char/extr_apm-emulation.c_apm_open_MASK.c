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
struct inode {int dummy; } ;
struct file {int f_mode; struct apm_user* private_data; } ;
struct apm_user {int writer; int reader; int /*<<< orphan*/  list; int /*<<< orphan*/  suser; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int ENOMEM ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  apm_user_list ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct apm_user* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  user_list_lock ; 

__attribute__((used)) static int FUNC7(struct inode * inode, struct file * filp)
{
	struct apm_user *as;

	FUNC4();
	as = FUNC2(sizeof(*as), GFP_KERNEL);
	if (as) {
		/*
		 * XXX - this is a tiny bit broken, when we consider BSD
		 * process accounting. If the device is opened by root, we
		 * instantly flag that we used superuser privs. Who knows,
		 * we might close the device immediately without doing a
		 * privileged operation -- cevans
		 */
		as->suser = FUNC0(CAP_SYS_ADMIN);
		as->writer = (filp->f_mode & FMODE_WRITE) == FMODE_WRITE;
		as->reader = (filp->f_mode & FMODE_READ) == FMODE_READ;

		FUNC1(&user_list_lock);
		FUNC3(&as->list, &apm_user_list);
		FUNC6(&user_list_lock);

		filp->private_data = as;
	}
	FUNC5();

	return as ? 0 : -ENOMEM;
}