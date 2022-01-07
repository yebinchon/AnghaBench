
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int timeout_fn ;
struct TYPE_6__ {scalar_t__ reset; } ;
struct TYPE_5__ {unsigned long expires; int function; } ;


 TYPE_4__* FDCS ;
 int add_timer (TYPE_1__*) ;
 int del_timer (TYPE_1__*) ;
 TYPE_1__ fd_timer ;
 int jiffies ;
 int reset_fdc () ;
 scalar_t__ time_before (int ,unsigned long) ;

__attribute__((used)) static int fd_wait_for_completion(unsigned long delay, timeout_fn function)
{
 if (FDCS->reset) {
  reset_fdc();


  return 1;
 }

 if (time_before(jiffies, delay)) {
  del_timer(&fd_timer);
  fd_timer.function = function;
  fd_timer.expires = delay;
  add_timer(&fd_timer);
  return 1;
 }
 return 0;
}
