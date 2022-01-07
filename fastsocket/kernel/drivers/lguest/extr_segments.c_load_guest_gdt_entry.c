
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {TYPE_2__* gdt; } ;
struct lg_cpu {int changed; TYPE_1__ arch; } ;
struct TYPE_4__ {size_t a; size_t b; } ;


 size_t ARRAY_SIZE (TYPE_2__*) ;
 int CHANGED_GDT ;
 int fixup_gdt_table (struct lg_cpu*,size_t,size_t) ;
 int kill_guest (struct lg_cpu*,char*,size_t) ;

void load_guest_gdt_entry(struct lg_cpu *cpu, u32 num, u32 lo, u32 hi)
{




 if (num >= ARRAY_SIZE(cpu->arch.gdt)) {
  kill_guest(cpu, "too many gdt entries %i", num);
  return;
 }


 cpu->arch.gdt[num].a = lo;
 cpu->arch.gdt[num].b = hi;
 fixup_gdt_table(cpu, num, num+1);




 cpu->changed |= CHANGED_GDT;
}
