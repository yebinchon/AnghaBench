
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * idt; } ;
struct lg_cpu {TYPE_1__ arch; int changed; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int CHANGED_IDT ;
 unsigned int LGUEST_TRAP_ENTRY ;
 int kill_guest (struct lg_cpu*,char*,unsigned int) ;
 int set_trap (struct lg_cpu*,int *,unsigned int,int ,int ) ;

void load_guest_idt_entry(struct lg_cpu *cpu, unsigned int num, u32 lo, u32 hi)
{




 if (num == 2 || num == 8 || num == 15 || num == LGUEST_TRAP_ENTRY)
  return;





 cpu->changed |= CHANGED_IDT;


 if (num >= ARRAY_SIZE(cpu->arch.idt))
  kill_guest(cpu, "Setting idt entry %u", num);
 else
  set_trap(cpu, &cpu->arch.idt[num], num, lo, hi);
}
