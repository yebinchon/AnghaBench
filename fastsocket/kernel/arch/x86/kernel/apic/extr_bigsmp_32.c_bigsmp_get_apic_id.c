
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned bigsmp_get_apic_id(unsigned long x)
{
 return (x >> 24) & 0xFF;
}
