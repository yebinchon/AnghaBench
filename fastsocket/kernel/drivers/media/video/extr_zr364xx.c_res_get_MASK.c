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
struct zr364xx_camera {int resources; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct zr364xx_camera *cam)
{
	/* is it free? */
	FUNC1(&cam->lock);
	if (cam->resources) {
		/* no, someone else uses it */
		FUNC2(&cam->lock);
		return 0;
	}
	/* it's free, grab it */
	cam->resources = 1;
	FUNC0("res: get\n");
	FUNC2(&cam->lock);
	return 1;
}