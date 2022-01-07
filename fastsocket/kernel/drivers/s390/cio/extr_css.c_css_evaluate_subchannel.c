
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel_id {int dummy; } ;
struct subchannel {int dev; } ;


 int EAGAIN ;
 int css_evaluate_known_subchannel (struct subchannel*,int) ;
 int css_evaluate_new_subchannel (struct subchannel_id,int) ;
 int css_schedule_eval (struct subchannel_id) ;
 struct subchannel* get_subchannel_by_schid (struct subchannel_id) ;
 int put_device (int *) ;

__attribute__((used)) static void css_evaluate_subchannel(struct subchannel_id schid, int slow)
{
 struct subchannel *sch;
 int ret;

 sch = get_subchannel_by_schid(schid);
 if (sch) {
  ret = css_evaluate_known_subchannel(sch, slow);
  put_device(&sch->dev);
 } else
  ret = css_evaluate_new_subchannel(schid, slow);
 if (ret == -EAGAIN)
  css_schedule_eval(schid);
}
