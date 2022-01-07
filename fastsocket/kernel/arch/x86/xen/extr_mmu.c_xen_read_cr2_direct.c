
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cr2; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;


 unsigned long percpu_read (int ) ;
 TYPE_2__ xen_vcpu_info ;

unsigned long xen_read_cr2_direct(void)
{
 return percpu_read(xen_vcpu_info.arch.cr2);
}
