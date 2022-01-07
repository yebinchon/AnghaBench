
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ciw {scalar_t__ ct; } ;
struct ccw_device {TYPE_2__* private; } ;
typedef scalar_t__ __u32 ;
struct TYPE_6__ {struct ciw* ciw; } ;
struct TYPE_4__ {scalar_t__ esid; } ;
struct TYPE_5__ {TYPE_3__ senseid; TYPE_1__ flags; } ;


 int MAX_CIWS ;

struct ciw *ccw_device_get_ciw(struct ccw_device *cdev, __u32 ct)
{
 int ciw_cnt;

 if (cdev->private->flags.esid == 0)
  return ((void*)0);
 for (ciw_cnt = 0; ciw_cnt < MAX_CIWS; ciw_cnt++)
  if (cdev->private->senseid.ciw[ciw_cnt].ct == ct)
   return cdev->private->senseid.ciw + ciw_cnt;
 return ((void*)0);
}
