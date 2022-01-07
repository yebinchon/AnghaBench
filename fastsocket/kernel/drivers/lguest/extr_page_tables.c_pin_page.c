
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lg_cpu {int dummy; } ;


 int demand_page (struct lg_cpu*,unsigned long,int) ;
 int kill_guest (struct lg_cpu*,char*,unsigned long) ;
 int page_writable (struct lg_cpu*,unsigned long) ;

void pin_page(struct lg_cpu *cpu, unsigned long vaddr)
{
 if (!page_writable(cpu, vaddr) && !demand_page(cpu, vaddr, 2))
  kill_guest(cpu, "bad stack page %#lx", vaddr);
}
