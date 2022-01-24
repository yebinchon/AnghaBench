#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_8__ {int flags; int /*<<< orphan*/  cp_running; } ;
typedef  TYPE_1__ drm_radeon_private_t ;
struct TYPE_9__ {scalar_t__ idle; scalar_t__ flush; } ;
typedef  TYPE_2__ drm_radeon_cp_stop_t ;

/* Variables and functions */
 int CHIP_R600 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,struct drm_file*) ; 
 int RADEON_FAMILY_MASK ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 

int FUNC9(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	drm_radeon_private_t *dev_priv = dev->dev_private;
	drm_radeon_cp_stop_t *stop = data;
	int ret;
	FUNC0("\n");

	FUNC1(dev, file_priv);

	if (!dev_priv->cp_running)
		return 0;

	/* Flush any pending CP commands.  This ensures any outstanding
	 * commands are exectuted by the engine before we turn it off.
	 */
	if (stop->flush) {
		FUNC5(dev_priv);
	}

	/* If we fail to make the engine go idle, we return an error
	 * code so that the DRM ioctl wrapper can try again.
	 */
	if (stop->idle) {
		if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_R600)
			ret = FUNC2(dev_priv);
		else
			ret = FUNC6(dev_priv);
		if (ret)
			return ret;
	}

	/* Finally, we can turn off the CP.  If the engine isn't idle,
	 * we will get some dropped triangles as they won't be fully
	 * rendered before the CP is shut down.
	 */
	if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_R600)
		FUNC3(dev_priv);
	else
		FUNC7(dev_priv);

	/* Reset the engine */
	if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_R600)
		FUNC4(dev);
	else
		FUNC8(dev);

	return 0;
}