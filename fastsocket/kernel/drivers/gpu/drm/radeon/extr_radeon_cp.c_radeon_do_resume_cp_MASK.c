#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_5__ {int flags; scalar_t__ have_z_offset; } ;
typedef  TYPE_1__ drm_radeon_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EINVAL ; 
 int RADEON_IS_AGP ; 
 int /*<<< orphan*/  RADEON_SW_INT_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,TYPE_1__*,struct drm_file*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC7(struct drm_device *dev, struct drm_file *file_priv)
{
	drm_radeon_private_t *dev_priv = dev->dev_private;

	if (!dev_priv) {
		FUNC1("Called with no initialization\n");
		return -EINVAL;
	}

	FUNC0("Starting radeon_do_resume_cp()\n");

#if __OS_HAS_AGP
	if (dev_priv->flags & RADEON_IS_AGP) {
		/* Turn off PCI GART */
		radeon_set_pcigart(dev_priv, 0);
	} else
#endif
	{
		/* Turn on PCI GART */
		FUNC6(dev_priv, 1);
	}

	FUNC3(dev_priv);
	FUNC2(dev, dev_priv, file_priv);

	dev_priv->have_z_offset = 0;
	FUNC4(dev);
	FUNC5(dev, RADEON_SW_INT_ENABLE, 1);

	FUNC0("radeon_do_resume_cp() complete\n");

	return 0;
}