
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _lowcore {int dummy; } ;


 int BUG_ON (int) ;
 int __ctl_clear_bit (int ,int) ;
 int __ctl_load (unsigned long,int ,int ) ;
 int __ctl_store (unsigned long,int ,int ) ;
 int memcpy_real (void*,void*,size_t) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int store_prefix () ;

void copy_to_absolute_zero(void *dest, void *src, size_t count)
{
 unsigned long cr0;

 BUG_ON((unsigned long) dest + count >= sizeof(struct _lowcore));
 preempt_disable();
 __ctl_store(cr0, 0, 0);
 __ctl_clear_bit(0, 28);
 memcpy_real(dest + store_prefix(), src, count);
 __ctl_load(cr0, 0, 0);
 preempt_enable();
}
