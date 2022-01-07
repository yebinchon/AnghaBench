
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int function; scalar_t__ expires; } ;


 scalar_t__ CPEI_INTERVAL ;
 int add_timer (TYPE_1__*) ;
 int init_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 TYPE_1__ sn_cpei_timer ;
 int sn_cpei_timer_handler ;

void sn_init_cpei_timer(void)
{
 init_timer(&sn_cpei_timer);
 sn_cpei_timer.expires = jiffies + CPEI_INTERVAL;
 sn_cpei_timer.function = sn_cpei_timer_handler;
 add_timer(&sn_cpei_timer);
}
