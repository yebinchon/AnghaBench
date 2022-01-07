
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_device {int pdev; } ;


 int GRDOM_RESET_ENABLE ;
 int I965_GDRST ;
 int pci_read_config_byte (int ,int ,int*) ;

__attribute__((used)) static int i965_reset_complete(struct drm_device *dev)
{
 u8 gdrst;
 pci_read_config_byte(dev->pdev, I965_GDRST, &gdrst);
 return (gdrst & GRDOM_RESET_ENABLE) == 0;
}
