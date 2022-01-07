
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ itc_offset; } ;


 TYPE_1__* XEN_MAPPEDREGS ;
 int xen_set_itm (scalar_t__) ;

__attribute__((used)) static void
xen_set_itm_with_offset(unsigned long val)
{


 xen_set_itm(val - XEN_MAPPEDREGS->itc_offset);
}
