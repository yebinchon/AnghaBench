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
struct pci_dev {int dummy; } ;
struct drm_device {void* switch_power_state; int /*<<< orphan*/  pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ pm_message_t ;
typedef  enum vga_switcheroo_state { ____Placeholder_vga_switcheroo_state } vga_switcheroo_state ;

/* Variables and functions */
 void* DRM_SWITCH_POWER_CHANGING ; 
 void* DRM_SWITCH_POWER_OFF ; 
 void* DRM_SWITCH_POWER_ON ; 
 int /*<<< orphan*/  PCI_D0 ; 
 int /*<<< orphan*/  PM_EVENT_SUSPEND ; 
 int VGA_SWITCHEROO_ON ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,TYPE_1__) ; 
 struct drm_device* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev, enum vga_switcheroo_state state)
{
	struct drm_device *dev = FUNC2(pdev);
	pm_message_t pmm = { .event = PM_EVENT_SUSPEND };
	if (state == VGA_SWITCHEROO_ON) {
		FUNC5("switched on\n");
		dev->switch_power_state = DRM_SWITCH_POWER_CHANGING;
		/* i915 resume handler doesn't set to D0 */
		FUNC3(dev->pdev, PCI_D0);
		FUNC0(dev);
		dev->switch_power_state = DRM_SWITCH_POWER_ON;
	} else {
		FUNC4("switched off\n");
		dev->switch_power_state = DRM_SWITCH_POWER_CHANGING;
		FUNC1(dev, pmm);
		dev->switch_power_state = DRM_SWITCH_POWER_OFF;
	}
}