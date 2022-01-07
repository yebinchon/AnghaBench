
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cm_supported; int handle; } ;


 int ENODEV ;
 char** cm_getv ;
 TYPE_1__* ehotk ;
 int pr_warning (char*,char const*) ;
 scalar_t__ read_acpi_int (int ,char const*,int*) ;

__attribute__((used)) static int get_acpi(int cm)
{
 int value = -ENODEV;
 if ((ehotk->cm_supported & (0x1 << cm))) {
  const char *method = cm_getv[cm];
  if (method == ((void*)0))
   return -ENODEV;
  if (read_acpi_int(ehotk->handle, method, &value))
   pr_warning("Error reading %s\n", method);
 }
 return value;
}
