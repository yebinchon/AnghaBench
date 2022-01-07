
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int acpi_ec_burst_disable (int ) ;
 int first_ec ;

int ec_burst_disable(void)
{
 if (!first_ec)
  return -ENODEV;
 return acpi_ec_burst_disable(first_ec);
}
