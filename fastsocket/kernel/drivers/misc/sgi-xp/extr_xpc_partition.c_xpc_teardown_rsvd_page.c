
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ts_jiffies; } ;


 TYPE_1__* xpc_rsvd_page ;

void
xpc_teardown_rsvd_page(void)
{

 xpc_rsvd_page->ts_jiffies = 0;
}
