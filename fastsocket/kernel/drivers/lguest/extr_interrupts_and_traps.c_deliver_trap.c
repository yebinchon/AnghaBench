
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* idt; } ;
struct lg_cpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int b; int a; } ;


 unsigned int ARRAY_SIZE (TYPE_2__*) ;
 int has_err (unsigned int) ;
 int idt_present (int ,int ) ;
 int set_guest_interrupt (struct lg_cpu*,int ,int ,int ) ;

bool deliver_trap(struct lg_cpu *cpu, unsigned int num)
{




 if (num >= ARRAY_SIZE(cpu->arch.idt))
  return 0;





 if (!idt_present(cpu->arch.idt[num].a, cpu->arch.idt[num].b))
  return 0;
 set_guest_interrupt(cpu, cpu->arch.idt[num].a,
       cpu->arch.idt[num].b, has_err(num));
 return 1;
}
