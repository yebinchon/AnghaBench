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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct vicam_camera {int /*<<< orphan*/  cam_lock; scalar_t__ udev; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct vicam_camera*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct vicam_camera *cam,
			    u8 request,
			    u16 value,
			    u16 index,
			    unsigned char *cp,
			    u16 size)
{
	int status = -ENODEV;
	FUNC1(&cam->cam_lock);
	if (cam->udev) {
		status = FUNC0(cam, request, value,
					    index, cp, size);
	}
	FUNC2(&cam->cam_lock);
	return status;
}