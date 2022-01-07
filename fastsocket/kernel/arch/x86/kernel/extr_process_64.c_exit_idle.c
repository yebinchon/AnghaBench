
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pid; } ;


 int __exit_idle () ;
 TYPE_1__* current ;

void exit_idle(void)
{

 if (current->pid)
  return;
 __exit_idle();
}
