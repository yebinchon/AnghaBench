
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ack_APIC_irq () ;

__attribute__((used)) static void uv_ack_apic(unsigned int irq)
{
 ack_APIC_irq();
}
