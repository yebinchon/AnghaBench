
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int percpu_write (int ,unsigned long) ;
 int xen_current_cr3 ;

__attribute__((used)) static void set_current_cr3(void *v)
{
 percpu_write(xen_current_cr3, (unsigned long)v);
}
