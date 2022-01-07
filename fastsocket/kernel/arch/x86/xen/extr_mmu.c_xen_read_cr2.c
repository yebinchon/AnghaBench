
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long cr2; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;


 TYPE_2__* percpu_read (int ) ;
 int xen_vcpu ;

__attribute__((used)) static unsigned long xen_read_cr2(void)
{
 return percpu_read(xen_vcpu)->arch.cr2;
}
