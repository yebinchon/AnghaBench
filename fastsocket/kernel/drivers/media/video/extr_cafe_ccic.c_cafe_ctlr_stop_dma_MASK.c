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
struct cafe_camera {int /*<<< orphan*/  dev_lock; int /*<<< orphan*/  state; int /*<<< orphan*/  flags; int /*<<< orphan*/  iowait; } ;

/* Variables and functions */
 int /*<<< orphan*/  CF_DMA_ACTIVE ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  S_IDLE ; 
 int /*<<< orphan*/  FUNC0 (struct cafe_camera*) ; 
 int /*<<< orphan*/  FUNC1 (struct cafe_camera*) ; 
 int /*<<< orphan*/  FUNC2 (struct cafe_camera*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct cafe_camera *cam)
{
	unsigned long flags;

	/*
	 * Theory: stop the camera controller (whether it is operating
	 * or not).  Delay briefly just in case we race with the SOF
	 * interrupt, then wait until no DMA is active.
	 */
	FUNC4(&cam->dev_lock, flags);
	FUNC1(cam);
	FUNC5(&cam->dev_lock, flags);
	FUNC3(1);
	FUNC7(cam->iowait,
			!FUNC6(CF_DMA_ACTIVE, &cam->flags), HZ);
	if (FUNC6(CF_DMA_ACTIVE, &cam->flags))
		FUNC2(cam, "Timeout waiting for DMA to end\n");
		/* This would be bad news - what now? */
	FUNC4(&cam->dev_lock, flags);
	cam->state = S_IDLE;
	FUNC0(cam);
	FUNC5(&cam->dev_lock, flags);
}