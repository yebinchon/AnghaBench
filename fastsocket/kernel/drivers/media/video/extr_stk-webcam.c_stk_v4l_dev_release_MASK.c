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
struct video_device {int dummy; } ;
struct stk_camera {int /*<<< orphan*/  interface; int /*<<< orphan*/ * isobufs; int /*<<< orphan*/ * sio_bufs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct stk_camera*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct stk_camera* FUNC3 (struct video_device*) ; 

__attribute__((used)) static void FUNC4(struct video_device *vd)
{
	struct stk_camera *dev = FUNC3(vd);

	if (dev->sio_bufs != NULL || dev->isobufs != NULL)
		FUNC0("We are leaking memory\n");
	FUNC2(dev->interface);
	FUNC1(dev);
}