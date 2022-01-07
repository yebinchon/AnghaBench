
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
 int driver_remove_file (int *,int *) ;

__attribute__((used)) static void nes_remove_driver_sysfs(struct pci_driver *drv)
{
 driver_remove_file(&drv->driver, &driver_attr_adapter);
 driver_remove_file(&drv->driver, &driver_attr_eeprom_cmd);
 driver_remove_file(&drv->driver, &driver_attr_eeprom_data);
 driver_remove_file(&drv->driver, &driver_attr_flash_cmd);
 driver_remove_file(&drv->driver, &driver_attr_flash_data);
 driver_remove_file(&drv->driver, &driver_attr_nonidx_addr);
 driver_remove_file(&drv->driver, &driver_attr_nonidx_data);
 driver_remove_file(&drv->driver, &driver_attr_idx_addr);
 driver_remove_file(&drv->driver, &driver_attr_idx_data);
 driver_remove_file(&drv->driver, &driver_attr_wqm_quanta);
}
