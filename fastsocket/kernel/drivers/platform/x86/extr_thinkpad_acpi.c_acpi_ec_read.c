
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int acpi_evalf (scalar_t__,int*,int *,char*,int) ;
 scalar_t__ ec_read (int,int*) ;
 scalar_t__ ecrd_handle ;

__attribute__((used)) static int acpi_ec_read(int i, u8 *p)
{
 int v;

 if (ecrd_handle) {
  if (!acpi_evalf(ecrd_handle, &v, ((void*)0), "dd", i))
   return 0;
  *p = v;
 } else {
  if (ec_read(i, p) < 0)
   return 0;
 }

 return 1;
}
