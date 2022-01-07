
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef char u32 ;



u8 acpi_ps_is_prefix_char(u32 c)
{
 return ((u8) (c == '\\' || c == '^'));
}
