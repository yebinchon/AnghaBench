
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int WARN_ON_ONCE (int) ;
 scalar_t__ cpu_has_apic ;
 int disable_apic ;

__attribute__((used)) static void native_apic_write_dummy(u32 reg, u32 v)
{
 WARN_ON_ONCE(cpu_has_apic && !disable_apic);
}
