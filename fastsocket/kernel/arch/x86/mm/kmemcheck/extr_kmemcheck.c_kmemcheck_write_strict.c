
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int kmemcheck_save_addr (unsigned long) ;
 void* kmemcheck_shadow_lookup (unsigned long) ;
 int kmemcheck_shadow_set (void*,unsigned int) ;

__attribute__((used)) static void kmemcheck_write_strict(struct pt_regs *regs,
 unsigned long addr, unsigned int size)
{
 void *shadow;

 shadow = kmemcheck_shadow_lookup(addr);
 if (!shadow)
  return;

 kmemcheck_save_addr(addr);
 kmemcheck_shadow_set(shadow, size);
}
