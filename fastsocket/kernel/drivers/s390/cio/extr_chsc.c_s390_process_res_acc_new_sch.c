
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel_id {int dummy; } ;
struct schib {int dummy; } ;


 int ENXIO ;
 int css_schedule_eval (struct subchannel_id) ;
 scalar_t__ stsch_err (struct subchannel_id,struct schib*) ;

__attribute__((used)) static int s390_process_res_acc_new_sch(struct subchannel_id schid, void *data)
{
 struct schib schib;
 if (stsch_err(schid, &schib))

  return -ENXIO;


 css_schedule_eval(schid);
 return 0;
}
