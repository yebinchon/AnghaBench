
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long native_read_cr0 () ;
 unsigned long percpu_read (int ) ;
 int percpu_write (int ,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int xen_cr0_value ;

__attribute__((used)) static unsigned long xen_read_cr0(void)
{
 unsigned long cr0 = percpu_read(xen_cr0_value);

 if (unlikely(cr0 == 0)) {
  cr0 = native_read_cr0();
  percpu_write(xen_cr0_value, cr0);
 }

 return cr0;
}
