
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct drm_device {int dummy; } ;


 struct drm_device* pci_get_drvdata (struct pci_dev*) ;
 int radeon_resume_kms (struct drm_device*) ;

__attribute__((used)) static int
radeon_pci_resume(struct pci_dev *pdev)
{
 struct drm_device *dev = pci_get_drvdata(pdev);
 return radeon_resume_kms(dev);
}
