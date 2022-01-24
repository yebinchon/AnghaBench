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
struct pci_dev {int dummy; } ;
struct drm_device {int /*<<< orphan*/  dev_private; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct drm_device*) ; 
 struct drm_device* FUNC2 (struct pci_dev*) ; 
 struct pci_dev* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct pci_dev *pdev = FUNC3(dev);
	struct drm_device *drm_dev = FUNC2(pdev);

	if (!drm_dev || !drm_dev->dev_private) {
		FUNC0(dev, "DRM not initialized, aborting suspend.\n");
		return -ENODEV;
	}

	return FUNC1(drm_dev);
}