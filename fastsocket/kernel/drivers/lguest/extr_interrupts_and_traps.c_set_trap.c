
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct lg_cpu {int dummy; } ;
struct desc_struct {int a; int b; } ;


 int GUEST_PL ;
 int __KERNEL_CS ;
 int idt_present (int,int) ;
 int idt_type (int,int) ;
 int kill_guest (struct lg_cpu*,char*,int) ;

__attribute__((used)) static void set_trap(struct lg_cpu *cpu, struct desc_struct *trap,
       unsigned int num, u32 lo, u32 hi)
{
 u8 type = idt_type(lo, hi);


 if (!idt_present(lo, hi)) {
  trap->a = trap->b = 0;
  return;
 }


 if (type != 0xE && type != 0xF)
  kill_guest(cpu, "bad IDT type %i", type);







 trap->a = ((__KERNEL_CS|GUEST_PL)<<16) | (lo&0x0000FFFF);
 trap->b = (hi&0xFFFFEF00);
}
