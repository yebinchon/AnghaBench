
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* interrupt ) () ;} ;


 TYPE_1__* cont ;
 int del_timer (int *) ;
 int fd_timer ;
 int stub1 () ;

__attribute__((used)) static void main_command_interrupt(void)
{
 del_timer(&fd_timer);
 cont->interrupt();
}
