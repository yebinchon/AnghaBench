
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct subchannel {int opm; int lpm; int ssd_info; } ;
struct chp_link {int dummy; } ;
struct ccw_device {TYPE_1__* private; } ;
struct TYPE_2__ {int path_gone_mask; int path_new_mask; } ;






 int ENODEV ;
 int chp_ssd_get_mask (int *,struct chp_link*) ;
 int cio_update_schib (struct subchannel*) ;
 int io_subchannel_terminate_path (struct subchannel*,int) ;
 int io_subchannel_verify (struct subchannel*) ;
 struct ccw_device* sch_get_cdev (struct subchannel*) ;

__attribute__((used)) static int io_subchannel_chp_event(struct subchannel *sch,
       struct chp_link *link, int event)
{
 struct ccw_device *cdev = sch_get_cdev(sch);
 int mask;

 mask = chp_ssd_get_mask(&sch->ssd_info, link);
 if (!mask)
  return 0;
 switch (event) {
 case 129:
  sch->opm &= ~mask;
  sch->lpm &= ~mask;
  if (cdev)
   cdev->private->path_gone_mask |= mask;
  io_subchannel_terminate_path(sch, mask);
  break;
 case 128:
  sch->opm |= mask;
  sch->lpm |= mask;
  if (cdev)
   cdev->private->path_new_mask |= mask;
  io_subchannel_verify(sch);
  break;
 case 131:
  if (cio_update_schib(sch))
   return -ENODEV;
  if (cdev)
   cdev->private->path_gone_mask |= mask;
  io_subchannel_terminate_path(sch, mask);
  break;
 case 130:
  if (cio_update_schib(sch))
   return -ENODEV;
  sch->lpm |= mask & sch->opm;
  if (cdev)
   cdev->private->path_new_mask |= mask;
  io_subchannel_verify(sch);
  break;
 }
 return 0;
}
