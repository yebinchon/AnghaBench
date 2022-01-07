
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; } ;


 scalar_t__ SALINFO_TIMER_DELAY ;
 scalar_t__ SAL_INFO_TYPE_INIT ;
 scalar_t__ SAL_INFO_TYPE_MCA ;
 int add_timer (TYPE_1__*) ;
 int ia64_mlogbuf_dump () ;
 scalar_t__ jiffies ;
 scalar_t__ salinfo_data ;
 int salinfo_timeout_check (scalar_t__) ;
 TYPE_1__ salinfo_timer ;

__attribute__((used)) static void
salinfo_timeout (unsigned long arg)
{
 ia64_mlogbuf_dump();
 salinfo_timeout_check(salinfo_data + SAL_INFO_TYPE_MCA);
 salinfo_timeout_check(salinfo_data + SAL_INFO_TYPE_INIT);
 salinfo_timer.expires = jiffies + SALINFO_TIMER_DELAY;
 add_timer(&salinfo_timer);
}
