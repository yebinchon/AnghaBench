
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APIC_INTEGRATED (int ) ;
 int lapic_get_version () ;

__attribute__((used)) static inline int lapic_is_integrated(void)
{



 return APIC_INTEGRATED(lapic_get_version());

}
