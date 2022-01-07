
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int x2apic_mode ;

__attribute__((used)) static int x2apic_cluster_probe(void)
{
 return x2apic_mode;
}
