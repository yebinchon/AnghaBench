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
struct omap24xxcam_device {int /*<<< orphan*/  core_enable_disable_lock; int /*<<< orphan*/  in_reset; scalar_t__ sgdma_in_queue; int /*<<< orphan*/  sgdma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct omap24xxcam_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct omap24xxcam_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct omap24xxcam_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct omap24xxcam_device *cam)
{
	unsigned long flags;

	FUNC6(&cam->core_enable_disable_lock, flags);

	if (FUNC1(&cam->in_reset) != 1)
		goto out;

	FUNC3(cam);

	FUNC4(cam);

	FUNC5(&cam->sgdma);

	if (cam->sgdma_in_queue)
		FUNC2(cam);

out:
	FUNC0(&cam->in_reset);
	FUNC7(&cam->core_enable_disable_lock, flags);
}