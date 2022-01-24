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
struct omap24xxcam_device {int /*<<< orphan*/  sgdma; int /*<<< orphan*/  core_enable_disable_lock; int /*<<< orphan*/  in_reset; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct omap24xxcam_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct omap24xxcam_device *cam)
{
	unsigned long flags;

	FUNC3(&cam->core_enable_disable_lock, flags);

	if (FUNC0(&cam->in_reset) != 1) {
		FUNC4(&cam->core_enable_disable_lock, flags);
		return;
	}

	FUNC1(cam);

	FUNC4(&cam->core_enable_disable_lock, flags);

	FUNC2(&cam->sgdma);
}