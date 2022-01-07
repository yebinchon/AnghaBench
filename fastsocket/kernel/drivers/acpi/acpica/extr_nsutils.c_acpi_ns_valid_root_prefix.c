
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



u8 acpi_ns_valid_root_prefix(char prefix)
{

 return ((u8) (prefix == '\\'));
}
