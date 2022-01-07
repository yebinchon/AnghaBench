
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ccw_device {TYPE_2__* private; } ;
struct TYPE_6__ {int cu_type; } ;
struct TYPE_4__ {scalar_t__ esid; } ;
struct TYPE_5__ {TYPE_3__ senseid; TYPE_1__ flags; } ;


 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static void snsid_init(struct ccw_device *cdev)
{
 cdev->private->flags.esid = 0;
 memset(&cdev->private->senseid, 0, sizeof(cdev->private->senseid));
 cdev->private->senseid.cu_type = 0xffff;
}
