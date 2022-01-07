
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long data; scalar_t__ expires; int function; } ;


 int HZ ;
 int add_timer (TYPE_1__*) ;
 int cell_virtual_cntr ;
 int init_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 TYPE_1__ timer_virt_cntr ;

__attribute__((used)) static void start_virt_cntrs(void)
{
 init_timer(&timer_virt_cntr);
 timer_virt_cntr.function = cell_virtual_cntr;
 timer_virt_cntr.data = 0UL;
 timer_virt_cntr.expires = jiffies + HZ / 10;
 add_timer(&timer_virt_cntr);
}
