
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
typedef enum kmemcheck_shadow { ____Placeholder_kmemcheck_shadow } kmemcheck_shadow ;


 int KMEMCHECK_SHADOW_INITIALIZED ;
 int kmemcheck_enabled ;
 int kmemcheck_error_save (int,unsigned long,unsigned int,struct pt_regs*) ;
 int kmemcheck_save_addr (unsigned long) ;
 void* kmemcheck_shadow_lookup (unsigned long) ;
 int kmemcheck_shadow_set (void*,unsigned int) ;
 int kmemcheck_shadow_test (void*,unsigned int) ;

__attribute__((used)) static void kmemcheck_read_strict(struct pt_regs *regs,
 unsigned long addr, unsigned int size)
{
 void *shadow;
 enum kmemcheck_shadow status;

 shadow = kmemcheck_shadow_lookup(addr);
 if (!shadow)
  return;

 kmemcheck_save_addr(addr);
 status = kmemcheck_shadow_test(shadow, size);
 if (status == KMEMCHECK_SHADOW_INITIALIZED)
  return;

 if (kmemcheck_enabled)
  kmemcheck_error_save(status, addr, size, regs);

 if (kmemcheck_enabled == 2)
  kmemcheck_enabled = 0;


 kmemcheck_shadow_set(shadow, size);
}
