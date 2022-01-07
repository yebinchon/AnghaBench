
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct drm_device {int dummy; } ;
typedef int pm_message_t ;


 struct drm_device* pci_get_drvdata (struct pci_dev*) ;
 int radeon_suspend_kms (struct drm_device*,int ) ;

__attribute__((used)) static int
radeon_pci_suspend(struct pci_dev *pdev, pm_message_t state)
{
 struct drm_device *dev = pci_get_drvdata(pdev);
 return radeon_suspend_kms(dev, state);
}
