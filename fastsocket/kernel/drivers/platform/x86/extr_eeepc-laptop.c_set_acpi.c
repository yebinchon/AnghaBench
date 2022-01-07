
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cm_supported; int handle; } ;


 int ENODEV ;
 char** cm_setv ;
 TYPE_1__* ehotk ;
 int pr_warning (char*,char const*) ;
 scalar_t__ write_acpi_int (int ,char const*,int,int *) ;

__attribute__((used)) static int set_acpi(int cm, int value)
{
 if (ehotk->cm_supported & (0x1 << cm)) {
  const char *method = cm_setv[cm];
  if (method == ((void*)0))
   return -ENODEV;
  if (write_acpi_int(ehotk->handle, method, value, ((void*)0)))
   pr_warning("Error writing %s\n", method);
 }
 return 0;
}
