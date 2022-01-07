
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;


 int drm_get_pci_dev (struct pci_dev*,struct pci_device_id const*,int *) ;
 int kms_driver ;
 int radeon_kick_out_firmware_fb (struct pci_dev*) ;

__attribute__((used)) static int radeon_pci_probe(struct pci_dev *pdev,
       const struct pci_device_id *ent)
{
 int ret;


 ret = radeon_kick_out_firmware_fb(pdev);
 if (ret)
  return ret;

 return drm_get_pci_dev(pdev, ent, &kms_driver);
}
