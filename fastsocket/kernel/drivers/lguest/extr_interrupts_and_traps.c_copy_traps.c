
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct desc_struct* idt; } ;
struct lg_cpu {TYPE_1__ arch; } ;
struct desc_struct {int b; int a; } ;


 unsigned int ARRAY_SIZE (struct desc_struct*) ;
 int default_idt_entry (struct desc_struct*,unsigned int,unsigned long const,struct desc_struct const*) ;
 int direct_trap (unsigned int) ;
 int idt_type (int ,int ) ;

void copy_traps(const struct lg_cpu *cpu, struct desc_struct *idt,
  const unsigned long *def)
{
 unsigned int i;





 for (i = 0; i < ARRAY_SIZE(cpu->arch.idt); i++) {
  const struct desc_struct *gidt = &cpu->arch.idt[i];


  if (!direct_trap(i))
   continue;
  if (idt_type(gidt->a, gidt->b) == 0xF)
   idt[i] = *gidt;
  else
   default_idt_entry(&idt[i], i, def[i], gidt);
 }
}
