
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel {int dummy; } ;
struct ccw_device {int dummy; } ;


 struct ccw_device* ERR_PTR (int) ;
 int IS_ERR (struct ccw_device*) ;
 struct ccw_device* io_subchannel_allocate_dev (struct subchannel*) ;
 int io_subchannel_initialize_dev (struct subchannel*,struct ccw_device*) ;

__attribute__((used)) static struct ccw_device * io_subchannel_create_ccwdev(struct subchannel *sch)
{
 struct ccw_device *cdev;
 int ret;

 cdev = io_subchannel_allocate_dev(sch);
 if (!IS_ERR(cdev)) {
  ret = io_subchannel_initialize_dev(sch, cdev);
  if (ret)
   cdev = ERR_PTR(ret);
 }
 return cdev;
}
