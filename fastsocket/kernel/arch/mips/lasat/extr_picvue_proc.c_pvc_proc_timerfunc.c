
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; } ;


 int DISPLAY ;
 int LEFT ;
 int RIGHT ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int pvc_move (int) ;
 scalar_t__ scroll_dir ;
 scalar_t__ scroll_interval ;
 TYPE_1__ timer ;

void pvc_proc_timerfunc(unsigned long data)
{
 if (scroll_dir < 0)
  pvc_move(DISPLAY|RIGHT);
 else if (scroll_dir > 0)
  pvc_move(DISPLAY|LEFT);

 timer.expires = jiffies + scroll_interval;
 add_timer(&timer);
}
