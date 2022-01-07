
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ENODEV ;
 int acpi_ec_read (int ,int ,int *) ;
 int first_ec ;

int ec_read(u8 addr, u8 * val)
{
 int err;
 u8 temp_data;

 if (!first_ec)
  return -ENODEV;

 err = acpi_ec_read(first_ec, addr, &temp_data);

 if (!err) {
  *val = temp_data;
  return 0;
 } else
  return err;
}
