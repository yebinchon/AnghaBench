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
struct camera_data {int present; int /*<<< orphan*/  wq_stream; int /*<<< orphan*/  busy_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct camera_data* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct camera_data *FUNC4(void)
{
	struct camera_data *cam;

	cam = FUNC2(sizeof(*cam), GFP_KERNEL);

	if (!cam) {
		FUNC0("couldn't kmalloc cpia2 struct\n");
		return NULL;
	}


	cam->present = 1;
	FUNC3(&cam->busy_lock);
	FUNC1(&cam->wq_stream);

	return cam;
}