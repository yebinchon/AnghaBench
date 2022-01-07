
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct drm_device {scalar_t__ open_count; int count_lock; } ;


 struct drm_device* pci_get_drvdata (struct pci_dev*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool i915_switcheroo_can_switch(struct pci_dev *pdev)
{
 struct drm_device *dev = pci_get_drvdata(pdev);
 bool can_switch;

 spin_lock(&dev->count_lock);
 can_switch = (dev->open_count == 0);
 spin_unlock(&dev->count_lock);
 return can_switch;
}
