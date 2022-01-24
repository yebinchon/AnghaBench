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
struct drm_device {scalar_t__ switch_power_state; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ DRM_SWITCH_POWER_OFF ; 
 int /*<<< orphan*/  PCI_D0 ; 
 int FUNC0 (struct drm_device*) ; 
 int FUNC1 (struct pci_dev*) ; 
 struct drm_device* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC6 (struct device*) ; 

int FUNC7(struct device *dev)
{
	struct pci_dev *pdev = FUNC6(dev);
	struct drm_device *drm_dev = FUNC2(pdev);
	int ret;

	if (drm_dev->switch_power_state == DRM_SWITCH_POWER_OFF)
		return 0;

	FUNC5(pdev, PCI_D0);
	FUNC3(pdev);
	ret = FUNC1(pdev);
	if (ret)
		return ret;
	FUNC4(pdev);

	return FUNC0(drm_dev);
}