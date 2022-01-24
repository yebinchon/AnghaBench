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
struct mddev {int ro; int in_sync; int safemode; scalar_t__ hold_active; int /*<<< orphan*/  sysfs_state; int /*<<< orphan*/  gendisk; int /*<<< orphan*/  sb_wait; int /*<<< orphan*/  flags; int /*<<< orphan*/  pers; int /*<<< orphan*/  write_lock; int /*<<< orphan*/  writes_pending; } ;
typedef  int ssize_t ;
typedef  enum array_state { ____Placeholder_array_state } array_state ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  MD_CHANGE_CLEAN ; 
 int /*<<< orphan*/  MD_CHANGE_PENDING ; 
 scalar_t__ UNTIL_IOCTL ; 
#define  active 137 
#define  active_idle 136 
 int /*<<< orphan*/  array_states ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  bad_word 135 
#define  clean 134 
#define  clear 133 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct mddev*) ; 
 int FUNC3 (struct mddev*,int,int /*<<< orphan*/ *) ; 
#define  inactive 132 
 int FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mddev*,int /*<<< orphan*/ *) ; 
#define  read_auto 131 
#define  readonly 130 
 int FUNC6 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
#define  suspended 129 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
#define  write_pending 128 

__attribute__((used)) static ssize_t
FUNC13(struct mddev *mddev, const char *buf, size_t len)
{
	int err = -EINVAL;
	enum array_state st = FUNC4(buf, array_states);
	switch(st) {
	case bad_word:
		break;
	case clear:
		/* stopping an active array */
		err = FUNC3(mddev, 0, NULL);
		break;
	case inactive:
		/* stopping an active array */
		if (mddev->pers)
			err = FUNC3(mddev, 2, NULL);
		else
			err = 0; /* already inactive */
		break;
	case suspended:
		break; /* not supported yet */
	case readonly:
		if (mddev->pers)
			err = FUNC5(mddev, NULL);
		else {
			mddev->ro = 1;
			FUNC8(mddev->gendisk, 1);
			err = FUNC2(mddev);
		}
		break;
	case read_auto:
		if (mddev->pers) {
			if (mddev->ro == 0)
				err = FUNC5(mddev, NULL);
			else if (mddev->ro == 1)
				err = FUNC6(mddev);
			if (err == 0) {
				mddev->ro = 2;
				FUNC8(mddev->gendisk, 0);
			}
		} else {
			mddev->ro = 2;
			err = FUNC2(mddev);
		}
		break;
	case clean:
		if (mddev->pers) {
			FUNC6(mddev);
			FUNC9(&mddev->write_lock);
			if (FUNC0(&mddev->writes_pending) == 0) {
				if (mddev->in_sync == 0) {
					mddev->in_sync = 1;
					if (mddev->safemode == 1)
						mddev->safemode = 0;
					FUNC7(MD_CHANGE_CLEAN, &mddev->flags);
				}
				err = 0;
			} else
				err = -EBUSY;
			FUNC10(&mddev->write_lock);
		} else
			err = -EINVAL;
		break;
	case active:
		if (mddev->pers) {
			FUNC6(mddev);
			FUNC1(MD_CHANGE_PENDING, &mddev->flags);
			FUNC12(&mddev->sb_wait);
			err = 0;
		} else {
			mddev->ro = 0;
			FUNC8(mddev->gendisk, 0);
			err = FUNC2(mddev);
		}
		break;
	case write_pending:
	case active_idle:
		/* these cannot be set */
		break;
	}
	if (err)
		return err;
	else {
		if (mddev->hold_active == UNTIL_IOCTL)
			mddev->hold_active = 0;
		FUNC11(mddev->sysfs_state);
		return len;
	}
}