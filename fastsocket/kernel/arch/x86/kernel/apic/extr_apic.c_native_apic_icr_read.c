
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int APIC_ICR ;
 int APIC_ICR2 ;
 int apic_read (int ) ;

u64 native_apic_icr_read(void)
{
 u32 icr1, icr2;

 icr2 = apic_read(APIC_ICR2);
 icr1 = apic_read(APIC_ICR);

 return icr1 | ((u64)icr2 << 32);
}
