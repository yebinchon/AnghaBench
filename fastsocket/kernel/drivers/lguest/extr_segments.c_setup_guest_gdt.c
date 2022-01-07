
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* gdt; } ;
struct lg_cpu {TYPE_1__ arch; } ;
struct TYPE_5__ {int b; } ;


 TYPE_2__ FULL_EXEC_SEGMENT ;
 TYPE_2__ FULL_SEGMENT ;
 size_t GDT_ENTRY_KERNEL_CS ;
 size_t GDT_ENTRY_KERNEL_DS ;
 int GUEST_PL ;

void setup_guest_gdt(struct lg_cpu *cpu)
{




 cpu->arch.gdt[GDT_ENTRY_KERNEL_CS] = FULL_EXEC_SEGMENT;
 cpu->arch.gdt[GDT_ENTRY_KERNEL_DS] = FULL_SEGMENT;
 cpu->arch.gdt[GDT_ENTRY_KERNEL_CS].b |= (GUEST_PL << 13);
 cpu->arch.gdt[GDT_ENTRY_KERNEL_DS].b |= (GUEST_PL << 13);
}
