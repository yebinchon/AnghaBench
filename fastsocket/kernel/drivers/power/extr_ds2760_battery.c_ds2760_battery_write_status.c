
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds2760_device_info {char* raw; int w1_dev; } ;


 int DS2760_EEPROM_BLOCK1 ;
 size_t DS2760_STATUS_REG ;
 int DS2760_STATUS_WRITE_REG ;
 int w1_ds2760_recall_eeprom (int ,int ) ;
 int w1_ds2760_store_eeprom (int ,int ) ;
 int w1_ds2760_write (int ,char*,int ,int) ;

__attribute__((used)) static void ds2760_battery_write_status(struct ds2760_device_info *di,
     char status)
{
 if (status == di->raw[DS2760_STATUS_REG])
  return;

 w1_ds2760_write(di->w1_dev, &status, DS2760_STATUS_WRITE_REG, 1);
 w1_ds2760_store_eeprom(di->w1_dev, DS2760_EEPROM_BLOCK1);
 w1_ds2760_recall_eeprom(di->w1_dev, DS2760_EEPROM_BLOCK1);
}
