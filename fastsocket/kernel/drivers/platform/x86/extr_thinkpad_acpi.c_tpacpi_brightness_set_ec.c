
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;


 int EIO ;
 int TP_EC_BACKLIGHT ;
 unsigned int TP_EC_BACKLIGHT_CMDMSK ;
 unsigned int TP_EC_BACKLIGHT_LVLMSK ;
 int acpi_ec_read (int ,unsigned int*) ;
 int acpi_ec_write (int ,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int tpacpi_brightness_set_ec(unsigned int value)
{
 u8 lec = 0;

 if (unlikely(!acpi_ec_read(TP_EC_BACKLIGHT, &lec)))
  return -EIO;

 if (unlikely(!acpi_ec_write(TP_EC_BACKLIGHT,
    (lec & TP_EC_BACKLIGHT_CMDMSK) |
    (value & TP_EC_BACKLIGHT_LVLMSK))))
  return -EIO;

 return 0;
}
