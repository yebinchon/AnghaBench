
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct die_args {int regs; } ;



 int NOTIFY_DONE ;
 int NOTIFY_STOP ;
 int oprofile_add_sample (int ,int ) ;

__attribute__((used)) static int profile_timer_exceptions_notify(struct notifier_block *self,
        unsigned long val, void *data)
{
 struct die_args *args = (struct die_args *)data;
 int ret = NOTIFY_DONE;

 switch (val) {
 case 128:
  oprofile_add_sample(args->regs, 0);
  ret = NOTIFY_STOP;
  break;
 default:
  break;
 }
 return ret;
}
