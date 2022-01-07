
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct lg_cpu {int ss1; int esp1; TYPE_1__* lg; } ;
struct TYPE_2__ {unsigned int stack_pages; } ;


 int GUEST_PL ;
 int kill_guest (struct lg_cpu*,char*,unsigned int) ;
 int pin_stack_pages (struct lg_cpu*) ;

void guest_set_stack(struct lg_cpu *cpu, u32 seg, u32 esp, unsigned int pages)
{



 if ((seg & 0x3) != GUEST_PL)
  kill_guest(cpu, "bad stack segment %i", seg);

 if (pages > 2)
  kill_guest(cpu, "bad stack pages %u", pages);

 cpu->ss1 = seg;
 cpu->esp1 = esp;
 cpu->lg->stack_pages = pages;

 pin_stack_pages(cpu);
}
