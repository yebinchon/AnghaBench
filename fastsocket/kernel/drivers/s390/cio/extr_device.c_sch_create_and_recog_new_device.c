
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel {int dummy; } ;
struct ccw_device {int dummy; } ;


 scalar_t__ IS_ERR (struct ccw_device*) ;
 int css_sch_device_unregister (struct subchannel*) ;
 struct ccw_device* io_subchannel_create_ccwdev (struct subchannel*) ;
 int io_subchannel_recog (struct ccw_device*,struct subchannel*) ;

__attribute__((used)) static void sch_create_and_recog_new_device(struct subchannel *sch)
{
 struct ccw_device *cdev;


 cdev = io_subchannel_create_ccwdev(sch);
 if (IS_ERR(cdev)) {

  css_sch_device_unregister(sch);
  return;
 }

 io_subchannel_recog(cdev, sch);
}
