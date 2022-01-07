
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cm_supported; int handle; } ;


 int * cm_getv ;
 TYPE_1__* ehotk ;
 int pr_info (char*,char const*,int) ;
 int read_acpi_int (int ,int ,int*) ;

__attribute__((used)) static void cmsg_quirk(int cm, const char *name)
{
 int dummy;



 if (!(ehotk->cm_supported & (1 << cm))
     && !read_acpi_int(ehotk->handle, cm_getv[cm], &dummy)) {
  pr_info("%s (%x) not reported by BIOS,"
   " enabling anyway\n", name, 1 << cm);
  ehotk->cm_supported |= 1 << cm;
 }
}
