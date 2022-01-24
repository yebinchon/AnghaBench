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
struct omap24xxcam_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  in_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct omap24xxcam_device*) ; 

__attribute__((used)) static void FUNC3(unsigned long data)
{
	struct omap24xxcam_device *cam = (struct omap24xxcam_device *)data;

	if (!FUNC0(&cam->in_reset)) {
		FUNC1(cam->dev, "dma stalled, resetting camera\n");
		FUNC2(cam);
	}
}