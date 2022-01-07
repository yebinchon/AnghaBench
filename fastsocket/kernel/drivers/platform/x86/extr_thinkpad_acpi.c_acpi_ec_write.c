
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int acpi_evalf (scalar_t__,int *,int *,char*,int,int ) ;
 scalar_t__ ec_write (int,int ) ;
 scalar_t__ ecwr_handle ;

__attribute__((used)) static int acpi_ec_write(int i, u8 v)
{
 if (ecwr_handle) {
  if (!acpi_evalf(ecwr_handle, ((void*)0), ((void*)0), "vdd", i, v))
   return 0;
 } else {
  if (ec_write(i, v) < 0)
   return 0;
 }

 return 1;
}
