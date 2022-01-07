
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ timeout_fn ;
struct TYPE_8__ {int flags; } ;
struct TYPE_7__ {int (* done ) (int ) ;} ;
struct TYPE_6__ {scalar_t__ expires; scalar_t__ function; } ;


 TYPE_5__* DP ;
 int DPRINT (char*) ;
 int FD_DEBUG ;
 int HZ ;
 int add_timer (TYPE_1__*) ;
 int cancel_activity () ;
 TYPE_3__* cont ;
 int current_drive ;
 int del_timer (TYPE_1__*) ;
 scalar_t__ disk_change (int ) ;
 TYPE_1__ fd_timer ;
 scalar_t__ jiffies ;
 int reset_fdc () ;
 int stub1 (int ) ;

__attribute__((used)) static void fd_watchdog(void)
{






 if (disk_change(current_drive)) {
  DPRINT("disk removed during i/o\n");
  cancel_activity();
  cont->done(0);
  reset_fdc();
 } else {
  del_timer(&fd_timer);
  fd_timer.function = (timeout_fn) fd_watchdog;
  fd_timer.expires = jiffies + HZ / 10;
  add_timer(&fd_timer);
 }
}
