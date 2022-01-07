
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int APIC_ICR ;
 int APIC_ICR2 ;
 int SET_APIC_DEST_FIELD (int ) ;
 int apic_write (int ,int ) ;

void native_apic_icr_write(u32 low, u32 id)
{
 apic_write(APIC_ICR2, SET_APIC_DEST_FIELD(id));
 apic_write(APIC_ICR, low);
}
