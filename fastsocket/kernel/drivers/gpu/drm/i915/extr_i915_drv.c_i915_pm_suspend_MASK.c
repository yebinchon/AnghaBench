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
struct drm_device {scalar_t__ switch_power_state; int /*<<< orphan*/  dev_private; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ DRM_SWITCH_POWER_OFF ; 
 int ENODEV ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct drm_device* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct pci_dev *pdev = FUNC5(dev);
	struct drm_device *drm_dev = FUNC3(pdev);
	int error;

	if (!drm_dev || !drm_dev->dev_private) {
		FUNC0(dev, "DRM not initialized, aborting suspend.\n");
		return -ENODEV;
	}

	if (drm_dev->switch_power_state == DRM_SWITCH_POWER_OFF)
		return 0;

	error = FUNC1(drm_dev);
	if (error)
		return error;

	FUNC2(pdev);
	FUNC4(pdev, PCI_D3hot);

	return 0;
}