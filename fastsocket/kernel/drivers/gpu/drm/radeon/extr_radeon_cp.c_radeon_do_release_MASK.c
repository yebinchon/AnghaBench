#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_6__ {int flags; int /*<<< orphan*/ * pfp_fw; int /*<<< orphan*/ * me_fw; int /*<<< orphan*/  fb_heap; int /*<<< orphan*/  gart_heap; scalar_t__ mmio; scalar_t__ cp_running; } ;
typedef  TYPE_1__ drm_radeon_private_t ;

/* Variables and functions */
 int CHIP_R600 ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  PZERO ; 
 int RADEON_FAMILY_MASK ; 
 scalar_t__ RADEON_GEN_INT_CNTL ; 
 int RADEON_MAX_SURFACES ; 
 scalar_t__ RADEON_SURFACE0_INFO ; 
 scalar_t__ RADEON_SURFACE0_LOWER_BOUND ; 
 scalar_t__ RADEON_SURFACE0_UPPER_BOUND ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int*,int /*<<< orphan*/ ,char*,int) ; 

void FUNC14(struct drm_device * dev)
{
	drm_radeon_private_t *dev_priv = dev->dev_private;
	int i, ret;

	if (dev_priv) {
		if (dev_priv->cp_running) {
			/* Stop the cp */
			if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_R600) {
				while ((ret = FUNC3(dev_priv)) != 0) {
					FUNC0("radeon_do_cp_idle %d\n", ret);
#ifdef __linux__
					FUNC12();
#else
					tsleep(&ret, PZERO, "rdnrel", 1);
#endif
				}
			} else {
				while ((ret = FUNC7(dev_priv)) != 0) {
					FUNC0("radeon_do_cp_idle %d\n", ret);
#ifdef __linux__
					FUNC12();
#else
					tsleep(&ret, PZERO, "rdnrel", 1);
#endif
				}
			}
			if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_R600) {
				FUNC4(dev_priv);
				FUNC5(dev);
			} else {
				FUNC8(dev_priv);
				FUNC9(dev);
			}
		}

		if ((dev_priv->flags & RADEON_FAMILY_MASK) < CHIP_R600) {
			/* Disable *all* interrupts */
			if (dev_priv->mmio)	/* remove this after permanent addmaps */
				FUNC1(RADEON_GEN_INT_CNTL, 0);

			if (dev_priv->mmio) {	/* remove all surfaces */
				for (i = 0; i < RADEON_MAX_SURFACES; i++) {
					FUNC1(RADEON_SURFACE0_INFO + 16 * i, 0);
					FUNC1(RADEON_SURFACE0_LOWER_BOUND +
						     16 * i, 0);
					FUNC1(RADEON_SURFACE0_UPPER_BOUND +
						     16 * i, 0);
				}
			}
		}

		/* Free memory heap structures */
		FUNC10(&(dev_priv->gart_heap));
		FUNC10(&(dev_priv->fb_heap));

		/* deallocate kernel resources */
		if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_R600)
			FUNC2(dev);
		else
			FUNC6(dev);
		FUNC11(dev_priv->me_fw);
		dev_priv->me_fw = NULL;
		FUNC11(dev_priv->pfp_fw);
		dev_priv->pfp_fw = NULL;
	}
}