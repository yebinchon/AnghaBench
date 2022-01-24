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
struct cafe_camera {scalar_t__ users; int /*<<< orphan*/  s_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cafe_camera*) ; 
 int /*<<< orphan*/  FUNC1 (struct cafe_camera*) ; 
 int /*<<< orphan*/  FUNC2 (struct cafe_camera*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct cafe_camera* FUNC5 (struct file*) ; 

__attribute__((used)) static int FUNC6(struct file *filp)
{
	struct cafe_camera *cam = FUNC5(filp);

	filp->private_data = cam;

	FUNC3(&cam->s_mutex);
	if (cam->users == 0) {
		FUNC1(cam);
		FUNC0(cam);
		FUNC2(cam, 1);
	/* FIXME make sure this is complete */
	}
	(cam->users)++;
	FUNC4(&cam->s_mutex);
	return 0;
}