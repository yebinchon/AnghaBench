
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int phy_mode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PHY_MODE_SPECIAL ;
 struct efx_nic* pci_get_drvdata (int ) ;
 int sprintf (char*,char*,int) ;
 int to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t show_phy_flash_cfg(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct efx_nic *efx = pci_get_drvdata(to_pci_dev(dev));
 return sprintf(buf, "%d\n", !!(efx->phy_mode & PHY_MODE_SPECIAL));
}
