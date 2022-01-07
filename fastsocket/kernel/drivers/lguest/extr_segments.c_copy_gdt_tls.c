
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct desc_struct* gdt; } ;
struct lg_cpu {TYPE_1__ arch; } ;
struct desc_struct {int dummy; } ;


 unsigned int GDT_ENTRY_TLS_MAX ;
 unsigned int GDT_ENTRY_TLS_MIN ;

void copy_gdt_tls(const struct lg_cpu *cpu, struct desc_struct *gdt)
{
 unsigned int i;

 for (i = GDT_ENTRY_TLS_MIN; i <= GDT_ENTRY_TLS_MAX; i++)
  gdt[i] = cpu->arch.gdt[i];
}
