
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* gdt; } ;
struct lg_cpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int b; } ;


 int GUEST_PL ;
 scalar_t__ ignored_gdt (unsigned int) ;

__attribute__((used)) static void fixup_gdt_table(struct lg_cpu *cpu, unsigned start, unsigned end)
{
 unsigned int i;

 for (i = start; i < end; i++) {




  if (ignored_gdt(i))
   continue;






  if ((cpu->arch.gdt[i].b & 0x00006000) == 0)
   cpu->arch.gdt[i].b |= (GUEST_PL << 13);







  cpu->arch.gdt[i].b |= 0x00000100;
 }
}
