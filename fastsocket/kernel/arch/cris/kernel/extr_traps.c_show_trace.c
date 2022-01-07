
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int THREAD_SIZE ;
 unsigned long VMALLOC_END ;
 unsigned long VMALLOC_START ;
 scalar_t__ __get_user (unsigned long,unsigned long*) ;
 int printk (char*,...) ;

void
show_trace(unsigned long *stack)
{
 unsigned long addr, module_start, module_end;
 extern char _stext, _etext;
 int i;

 printk("\nCall Trace: ");

 i = 1;
 module_start = VMALLOC_START;
 module_end = VMALLOC_END;

 while (((long)stack & (THREAD_SIZE-1)) != 0) {
  if (__get_user(addr, stack)) {



   printk("Failing address 0x%lx\n", (unsigned long)stack);
   break;
  }
  stack++;
  if (((addr >= (unsigned long)&_stext) &&
       (addr <= (unsigned long)&_etext)) ||
      ((addr >= module_start) && (addr <= module_end))) {
   if (i && ((i % 8) == 0))
    printk("\n       ");
   printk("[<%08lx>] ", addr);
   i++;
  }
 }
}
