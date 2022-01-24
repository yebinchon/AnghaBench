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
struct pp_cam_entry {scalar_t__ open_count; int /*<<< orphan*/  port; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  IEEE1284_MODE_COMPAT ; 
 int PARPORT_CONTROL_INIT ; 
 int PARPORT_CONTROL_SELECT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(void *privdata)
{
	struct pp_cam_entry *cam = (struct pp_cam_entry *)privdata;

	if (cam == NULL)
		return -EINVAL;

	if(cam->open_count == 0) {
		if (FUNC1(cam->pdev)) {
			FUNC0("failed to claim the port\n");
			return -EBUSY;
		}
		FUNC3(cam->port, IEEE1284_MODE_COMPAT);
		FUNC2(cam->port);
		FUNC4(cam->port, PARPORT_CONTROL_SELECT);
		FUNC5(50);
		FUNC4(cam->port,
				      PARPORT_CONTROL_SELECT
				      | PARPORT_CONTROL_INIT);
	}

	++cam->open_count;

	return 0;
}