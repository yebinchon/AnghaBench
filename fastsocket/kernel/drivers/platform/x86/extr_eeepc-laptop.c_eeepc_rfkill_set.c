
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int set_acpi (unsigned long,int) ;

__attribute__((used)) static int eeepc_rfkill_set(void *data, bool blocked)
{
 unsigned long asl = (unsigned long)data;
 return set_acpi(asl, !blocked);
}
