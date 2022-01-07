
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3215_info {int flags; int cdev; int timer; } ;


 int RAW3215_FROZEN ;
 int RAW3215_TIMER_RUNS ;
 int del_timer (int *) ;
 int get_ccwdev_lock (int ) ;
 int raw3215_mk_write_req (struct raw3215_info*) ;
 int raw3215_start_io (struct raw3215_info*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void raw3215_timeout(unsigned long __data)
{
 struct raw3215_info *raw = (struct raw3215_info *) __data;
 unsigned long flags;

 spin_lock_irqsave(get_ccwdev_lock(raw->cdev), flags);
 if (raw->flags & RAW3215_TIMER_RUNS) {
  del_timer(&raw->timer);
  raw->flags &= ~RAW3215_TIMER_RUNS;
  if (!(raw->flags & RAW3215_FROZEN)) {
   raw3215_mk_write_req(raw);
   raw3215_start_io(raw);
  }
 }
 spin_unlock_irqrestore(get_ccwdev_lock(raw->cdev), flags);
}
