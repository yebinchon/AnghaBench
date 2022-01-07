
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct desc_struct* gdt; } ;
struct lg_cpu {TYPE_1__ arch; } ;
struct desc_struct {int dummy; } ;


 unsigned int GDT_ENTRIES ;
 int ignored_gdt (unsigned int) ;

void copy_gdt(const struct lg_cpu *cpu, struct desc_struct *gdt)
{
 unsigned int i;





 for (i = 0; i < GDT_ENTRIES; i++)
  if (!ignored_gdt(i))
   gdt[i] = cpu->arch.gdt[i];
}
