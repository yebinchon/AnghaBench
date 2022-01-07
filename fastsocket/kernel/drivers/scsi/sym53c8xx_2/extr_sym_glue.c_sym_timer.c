
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ expires; } ;
struct TYPE_3__ {int lasttime; scalar_t__ settle_time_valid; int settle_time; TYPE_2__ timer; } ;
struct sym_hcb {TYPE_1__ s; } ;


 int HZ ;
 scalar_t__ SYM_CONF_TIMER_INTERVAL ;
 int add_timer (TYPE_2__*) ;
 unsigned long jiffies ;
 int printk (char*,int ) ;
 int sym_name (struct sym_hcb*) ;
 int sym_verbose ;
 int sym_wakeup_done (struct sym_hcb*) ;
 scalar_t__ time_before_eq (int ,unsigned long) ;

__attribute__((used)) static void sym_timer(struct sym_hcb *np)
{
 unsigned long thistime = jiffies;




 np->s.timer.expires = thistime + SYM_CONF_TIMER_INTERVAL;
 add_timer(&np->s.timer);





 if (np->s.settle_time_valid) {
  if (time_before_eq(np->s.settle_time, thistime)) {
   if (sym_verbose >= 2 )
    printk("%s: command processing resumed\n",
           sym_name(np));
   np->s.settle_time_valid = 0;
  }
  return;
 }




 if (np->s.lasttime + 4*HZ < thistime) {
  np->s.lasttime = thistime;
 }
}
