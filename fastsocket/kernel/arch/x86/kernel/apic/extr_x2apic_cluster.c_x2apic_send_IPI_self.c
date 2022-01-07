
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APIC_SELF_IPI ;
 int apic_write (int ,int) ;

__attribute__((used)) static void x2apic_send_IPI_self(int vector)
{
 apic_write(APIC_SELF_IPI, vector);
}
