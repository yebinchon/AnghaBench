
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_device {int pdev; } ;


 int GRDOM_MEDIA ;
 int GRDOM_RENDER ;
 int GRDOM_RESET_ENABLE ;
 int I965_GDRST ;
 int i965_reset_complete (struct drm_device*) ;
 int pci_read_config_byte (int ,int ,int*) ;
 int pci_write_config_byte (int ,int ,int) ;
 int wait_for (int ,int) ;

__attribute__((used)) static int i965_do_reset(struct drm_device *dev)
{
 int ret;
 u8 gdrst;






 pci_read_config_byte(dev->pdev, I965_GDRST, &gdrst);
 pci_write_config_byte(dev->pdev, I965_GDRST,
         gdrst | GRDOM_RENDER |
         GRDOM_RESET_ENABLE);
 ret = wait_for(i965_reset_complete(dev), 500);
 if (ret)
  return ret;


 pci_read_config_byte(dev->pdev, I965_GDRST, &gdrst);
 pci_write_config_byte(dev->pdev, I965_GDRST,
         gdrst | GRDOM_MEDIA |
         GRDOM_RESET_ENABLE);

 return wait_for(i965_reset_complete(dev), 500);
}
