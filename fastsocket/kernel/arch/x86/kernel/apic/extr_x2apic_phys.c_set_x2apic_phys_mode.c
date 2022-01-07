
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int x2apic_phys ;

__attribute__((used)) static int set_x2apic_phys_mode(char *arg)
{
 x2apic_phys = 1;
 return 0;
}
