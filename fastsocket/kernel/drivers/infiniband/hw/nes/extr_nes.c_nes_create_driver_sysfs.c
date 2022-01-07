
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_driver {int driver; } ;


 int driver_attr_adapter ;
 int driver_attr_eeprom_cmd ;
 int driver_attr_eeprom_data ;
 int driver_attr_flash_cmd ;
 int driver_attr_flash_data ;
 int driver_attr_idx_addr ;
 int driver_attr_idx_data ;
 int driver_attr_nonidx_addr ;
 int driver_attr_nonidx_data ;
 int driver_attr_wqm_quanta ;
 int driver_create_file (int *,int *) ;

__attribute__((used)) static int nes_create_driver_sysfs(struct pci_driver *drv)
{
 int error;
 error = driver_create_file(&drv->driver, &driver_attr_adapter);
 error |= driver_create_file(&drv->driver, &driver_attr_eeprom_cmd);
 error |= driver_create_file(&drv->driver, &driver_attr_eeprom_data);
 error |= driver_create_file(&drv->driver, &driver_attr_flash_cmd);
 error |= driver_create_file(&drv->driver, &driver_attr_flash_data);
 error |= driver_create_file(&drv->driver, &driver_attr_nonidx_addr);
 error |= driver_create_file(&drv->driver, &driver_attr_nonidx_data);
 error |= driver_create_file(&drv->driver, &driver_attr_idx_addr);
 error |= driver_create_file(&drv->driver, &driver_attr_idx_data);
 error |= driver_create_file(&drv->driver, &driver_attr_wqm_quanta);
 return error;
}
