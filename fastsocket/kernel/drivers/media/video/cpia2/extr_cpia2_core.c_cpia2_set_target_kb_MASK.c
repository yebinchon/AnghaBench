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
struct TYPE_3__ {unsigned char target_kb; } ;
struct TYPE_4__ {TYPE_1__ vc_params; } ;
struct camera_data {TYPE_2__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct camera_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct camera_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct camera_data*) ; 

int FUNC4(struct camera_data *cam, unsigned char value)
{
	FUNC0("Requested target_kb = %d\n", value);
	if (value != cam->params.vc_params.target_kb) {

		FUNC2(cam);

		/* reset camera for new target_kb */
		cam->params.vc_params.target_kb = value;
		FUNC1(cam);

		FUNC3(cam);
	}

	return 0;
}