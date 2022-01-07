
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned long data; int function; scalar_t__ expires; } ;
struct raw3215_info {int flags; TYPE_2__ timer; TYPE_1__* queued_write; int * queued_read; } ;
struct TYPE_5__ {scalar_t__ delayable; } ;


 int RAW3215_ACTIVE ;
 int RAW3215_FLUSHING ;
 int RAW3215_FROZEN ;
 scalar_t__ RAW3215_TIMEOUT ;
 int RAW3215_TIMER_RUNS ;
 int add_timer (TYPE_2__*) ;
 int del_timer (TYPE_2__*) ;
 int init_timer (TYPE_2__*) ;
 scalar_t__ jiffies ;
 int raw3215_start_io (struct raw3215_info*) ;
 int raw3215_timeout ;

__attribute__((used)) static inline void raw3215_try_io(struct raw3215_info *raw)
{
 if (!(raw->flags & RAW3215_ACTIVE) || (raw->flags & RAW3215_FROZEN))
  return;
 if (raw->queued_read != ((void*)0))
  raw3215_start_io(raw);
 else if (raw->queued_write != ((void*)0)) {
  if ((raw->queued_write->delayable == 0) ||
      (raw->flags & RAW3215_FLUSHING)) {

   raw3215_start_io(raw);
   if (raw->flags & RAW3215_TIMER_RUNS) {
    del_timer(&raw->timer);
    raw->flags &= ~RAW3215_TIMER_RUNS;
   }
  } else if (!(raw->flags & RAW3215_TIMER_RUNS)) {

   init_timer(&raw->timer);
   raw->timer.expires = RAW3215_TIMEOUT + jiffies;
   raw->timer.data = (unsigned long) raw;
   raw->timer.function = raw3215_timeout;
   add_timer(&raw->timer);
   raw->flags |= RAW3215_TIMER_RUNS;
  }
 }
}
