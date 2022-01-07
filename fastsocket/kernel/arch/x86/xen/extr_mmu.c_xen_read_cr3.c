
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long percpu_read (int ) ;
 int xen_cr3 ;

__attribute__((used)) static unsigned long xen_read_cr3(void)
{
 return percpu_read(xen_cr3);
}
