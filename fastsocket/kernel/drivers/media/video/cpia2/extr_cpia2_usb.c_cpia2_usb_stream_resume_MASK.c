#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  stream_mode; } ;
struct TYPE_4__ {TYPE_1__ camera_state; } ;
struct camera_data {TYPE_2__ params; scalar_t__ first_image_seen; scalar_t__ streaming; } ;

/* Variables and functions */
 int FUNC0 (struct camera_data*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct camera_data*) ; 

int FUNC2(struct camera_data *cam)
{
	int ret = 0;
	if(cam->streaming) {
		cam->first_image_seen = 0;
		ret = FUNC0(cam, cam->params.camera_state.stream_mode);
		if(ret == 0) {
			ret = FUNC1(cam);
		}
	}
	return ret;
}