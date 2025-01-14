
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct drm_device {void* switch_power_state; int pdev; } ;
struct TYPE_3__ {int event; } ;
typedef TYPE_1__ pm_message_t ;
typedef enum vga_switcheroo_state { ____Placeholder_vga_switcheroo_state } vga_switcheroo_state ;


 void* DRM_SWITCH_POWER_CHANGING ;
 void* DRM_SWITCH_POWER_OFF ;
 void* DRM_SWITCH_POWER_ON ;
 int PCI_D0 ;
 int PM_EVENT_SUSPEND ;
 int VGA_SWITCHEROO_ON ;
 int i915_resume (struct drm_device*) ;
 int i915_suspend (struct drm_device*,TYPE_1__) ;
 struct drm_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_power_state (int ,int ) ;
 int pr_err (char*) ;
 int pr_info (char*) ;

__attribute__((used)) static void i915_switcheroo_set_state(struct pci_dev *pdev, enum vga_switcheroo_state state)
{
 struct drm_device *dev = pci_get_drvdata(pdev);
 pm_message_t pmm = { .event = PM_EVENT_SUSPEND };
 if (state == VGA_SWITCHEROO_ON) {
  pr_info("switched on\n");
  dev->switch_power_state = DRM_SWITCH_POWER_CHANGING;

  pci_set_power_state(dev->pdev, PCI_D0);
  i915_resume(dev);
  dev->switch_power_state = DRM_SWITCH_POWER_ON;
 } else {
  pr_err("switched off\n");
  dev->switch_power_state = DRM_SWITCH_POWER_CHANGING;
  i915_suspend(dev, pmm);
  dev->switch_power_state = DRM_SWITCH_POWER_OFF;
 }
}
