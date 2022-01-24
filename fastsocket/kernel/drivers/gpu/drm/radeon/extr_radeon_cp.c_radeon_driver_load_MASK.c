#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_device {int /*<<< orphan*/  pdev; void* dev_private; } ;
struct TYPE_3__ {unsigned long flags; int /*<<< orphan*/  mmio; } ;
typedef  TYPE_1__ drm_radeon_private_t ;

/* Variables and functions */
#define  CHIP_R100 139 
#define  CHIP_R200 138 
#define  CHIP_R300 137 
#define  CHIP_R350 136 
#define  CHIP_R420 135 
#define  CHIP_R423 134 
#define  CHIP_R520 133 
#define  CHIP_R580 132 
#define  CHIP_RV200 131 
#define  CHIP_RV410 130 
#define  CHIP_RV515 129 
#define  CHIP_RV570 128 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long RADEON_FAMILY_MASK ; 
 unsigned long RADEON_HAS_HIERZ ; 
 int RADEON_IS_AGP ; 
 int RADEON_IS_PCI ; 
 int RADEON_IS_PCIE ; 
 int _DRM_DRIVER ; 
 int _DRM_READ_ONLY ; 
 int /*<<< orphan*/  _DRM_REGISTERS ; 
 int FUNC1 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 int FUNC3 (struct drm_device*,int) ; 
 TYPE_1__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 

int FUNC10(struct drm_device *dev, unsigned long flags)
{
	drm_radeon_private_t *dev_priv;
	int ret = 0;

	dev_priv = FUNC4(sizeof(drm_radeon_private_t), GFP_KERNEL);
	if (dev_priv == NULL)
		return -ENOMEM;

	dev->dev_private = (void *)dev_priv;
	dev_priv->flags = flags;

	switch (flags & RADEON_FAMILY_MASK) {
	case CHIP_R100:
	case CHIP_RV200:
	case CHIP_R200:
	case CHIP_R300:
	case CHIP_R350:
	case CHIP_R420:
	case CHIP_R423:
	case CHIP_RV410:
	case CHIP_RV515:
	case CHIP_R520:
	case CHIP_RV570:
	case CHIP_R580:
		dev_priv->flags |= RADEON_HAS_HIERZ;
		break;
	default:
		/* all other chips have no hierarchical z buffer */
		break;
	}

	FUNC8(dev->pdev);

	if (FUNC2(dev))
		dev_priv->flags |= RADEON_IS_AGP;
	else if (FUNC5(dev->pdev))
		dev_priv->flags |= RADEON_IS_PCIE;
	else
		dev_priv->flags |= RADEON_IS_PCI;

	ret = FUNC1(dev, FUNC7(dev->pdev, 2),
			 FUNC6(dev->pdev, 2), _DRM_REGISTERS,
			 _DRM_READ_ONLY | _DRM_DRIVER, &dev_priv->mmio);
	if (ret != 0)
		return ret;

	ret = FUNC3(dev, 2);
	if (ret) {
		FUNC9(dev);
		return ret;
	}

	FUNC0("%s card detected\n",
		  ((dev_priv->flags & RADEON_IS_AGP) ? "AGP" : (((dev_priv->flags & RADEON_IS_PCIE) ? "PCIE" : "PCI"))));
	return ret;
}