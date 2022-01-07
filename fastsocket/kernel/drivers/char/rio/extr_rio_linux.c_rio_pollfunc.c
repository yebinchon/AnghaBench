
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* RIOHosts; } ;
struct TYPE_3__ {int timer; } ;


 int func_enter () ;
 int func_exit () ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 TYPE_2__* p ;
 int rio_interrupt (int ,TYPE_1__*) ;
 scalar_t__ rio_poll ;

__attribute__((used)) static void rio_pollfunc(unsigned long data)
{
 func_enter();

 rio_interrupt(0, &p->RIOHosts[data]);
 mod_timer(&p->RIOHosts[data].timer, jiffies + rio_poll);

 func_exit();
}
