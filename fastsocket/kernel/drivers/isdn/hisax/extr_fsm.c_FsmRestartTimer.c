
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ expires; } ;
struct FsmTimer {int event; TYPE_1__ tl; void* arg; TYPE_2__* fi; } ;
struct TYPE_7__ {int (* printdebug ) (TYPE_2__*,char*,long,int,int) ;scalar_t__ debug; } ;


 int HZ ;
 int add_timer (TYPE_1__*) ;
 int del_timer (TYPE_1__*) ;
 int init_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int stub1 (TYPE_2__*,char*,long,int,int) ;
 scalar_t__ timer_pending (TYPE_1__*) ;

void
FsmRestartTimer(struct FsmTimer *ft,
     int millisec, int event, void *arg, int where)
{







 if (timer_pending(&ft->tl))
  del_timer(&ft->tl);
 init_timer(&ft->tl);
 ft->event = event;
 ft->arg = arg;
 ft->tl.expires = jiffies + (millisec * HZ) / 1000;
 add_timer(&ft->tl);
}
