
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {char* name; unsigned long rating; int set_mode; int set_next_event; int cpumask; int features; } ;
struct sh_cmt_priv {struct clock_event_device ced; } ;


 int CLOCK_EVT_FEAT_ONESHOT ;
 int CLOCK_EVT_FEAT_PERIODIC ;
 int clockevents_register_device (struct clock_event_device*) ;
 int cpumask_of (int ) ;
 int memset (struct clock_event_device*,int ,int) ;
 int pr_info (char*,char*) ;
 int sh_cmt_clock_event_mode ;
 int sh_cmt_clock_event_next ;

__attribute__((used)) static void sh_cmt_register_clockevent(struct sh_cmt_priv *p,
           char *name, unsigned long rating)
{
 struct clock_event_device *ced = &p->ced;

 memset(ced, 0, sizeof(*ced));

 ced->name = name;
 ced->features = CLOCK_EVT_FEAT_PERIODIC;
 ced->features |= CLOCK_EVT_FEAT_ONESHOT;
 ced->rating = rating;
 ced->cpumask = cpumask_of(0);
 ced->set_next_event = sh_cmt_clock_event_next;
 ced->set_mode = sh_cmt_clock_event_mode;

 pr_info("sh_cmt: %s used for clock events\n", ced->name);
 clockevents_register_device(ced);
}
