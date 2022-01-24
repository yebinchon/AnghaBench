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
struct file {struct cafe_camera* private_data; } ;
struct cafe_camera {scalar_t__ users; int /*<<< orphan*/  s_mutex; struct file* owner; } ;

/* Variables and functions */
 scalar_t__ alloc_bufs_at_read ; 
 int /*<<< orphan*/  FUNC0 (struct cafe_camera*) ; 
 int /*<<< orphan*/  FUNC1 (struct cafe_camera*) ; 
 int /*<<< orphan*/  FUNC2 (struct cafe_camera*) ; 
 int /*<<< orphan*/  FUNC3 (struct cafe_camera*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct file *filp)
{
	struct cafe_camera *cam = filp->private_data;

	FUNC4(&cam->s_mutex);
	(cam->users)--;
	if (filp == cam->owner) {
		FUNC1(cam);
		FUNC3(cam);
		cam->owner = NULL;
	}
	if (cam->users == 0) {
		FUNC0(cam);
		if (alloc_bufs_at_read)
			FUNC2(cam);
	}
	FUNC5(&cam->s_mutex);
	return 0;
}