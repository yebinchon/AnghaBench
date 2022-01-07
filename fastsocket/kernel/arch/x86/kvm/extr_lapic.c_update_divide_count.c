
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_lapic {int divide_count; } ;


 int APIC_TDCR ;
 int apic_debug (char*,int) ;
 int apic_get_reg (struct kvm_lapic*,int ) ;

__attribute__((used)) static void update_divide_count(struct kvm_lapic *apic)
{
 u32 tmp1, tmp2, tdcr;

 tdcr = apic_get_reg(apic, APIC_TDCR);
 tmp1 = tdcr & 0xf;
 tmp2 = ((tmp1 & 0x3) | ((tmp1 & 0x8) >> 1)) + 1;
 apic->divide_count = 0x1 << (tmp2 & 0x7);

 apic_debug("timer divide count is 0x%x\n",
       apic->divide_count);
}
