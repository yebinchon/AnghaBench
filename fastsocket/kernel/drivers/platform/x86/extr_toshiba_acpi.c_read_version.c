
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROC_INTERFACE_VERSION ;
 char* TOSHIBA_ACPI_VERSION ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static char *read_version(char *p)
{
 p += sprintf(p, "driver:                  %s\n", TOSHIBA_ACPI_VERSION);
 p += sprintf(p, "proc_interface:          %d\n",
       PROC_INTERFACE_VERSION);
 return p;
}
