
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int clock; } ;
struct TYPE_4__ {TYPE_1__ mmtimer; } ;
struct k_itimer {TYPE_2__ it; } ;


 int TIMER_OFF ;

__attribute__((used)) static int sgi_timer_create(struct k_itimer *timer)
{

 timer->it.mmtimer.clock = TIMER_OFF;
 return 0;
}
