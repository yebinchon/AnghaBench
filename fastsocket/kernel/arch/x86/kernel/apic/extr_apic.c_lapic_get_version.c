
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APIC_LVR ;
 int GET_APIC_VERSION (int ) ;
 int apic_read (int ) ;

__attribute__((used)) static inline int lapic_get_version(void)
{
 return GET_APIC_VERSION(apic_read(APIC_LVR));
}
