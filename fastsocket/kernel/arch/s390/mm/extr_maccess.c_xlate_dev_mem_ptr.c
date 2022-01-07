
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_ATOMIC ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SIZE ;
 scalar_t__ __get_free_page (int ) ;
 int get_online_cpus () ;
 scalar_t__ get_swapped (unsigned long) ;
 scalar_t__ is_swapped (unsigned long) ;
 int memcpy_real (void*,void*,unsigned long) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int put_online_cpus () ;

void *xlate_dev_mem_ptr(unsigned long addr)
{
 void *bounce = (void *) addr;
 unsigned long size;

 get_online_cpus();
 preempt_disable();
 if (is_swapped(addr)) {
  size = PAGE_SIZE - (addr & ~PAGE_MASK);
  bounce = (void *) __get_free_page(GFP_ATOMIC);
  if (bounce)
   memcpy_real(bounce, (void *) get_swapped(addr), size);
 }
 preempt_enable();
 put_online_cpus();
 return bounce;
}
