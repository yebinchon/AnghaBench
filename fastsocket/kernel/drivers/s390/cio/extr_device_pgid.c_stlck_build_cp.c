
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct ccw_request {struct ccw1* cp; } ;
struct ccw_device {TYPE_1__* private; } ;
struct ccw1 {int count; scalar_t__ flags; void* cda; int cmd_code; } ;
typedef scalar_t__ addr_t ;
struct TYPE_2__ {struct ccw1* iccws; struct ccw_request req; } ;


 int CCW_CMD_RELEASE ;
 int CCW_CMD_STLCK ;
 scalar_t__ CCW_FLAG_CC ;

__attribute__((used)) static void stlck_build_cp(struct ccw_device *cdev, void *buf1, void *buf2)
{
 struct ccw_request *req = &cdev->private->req;
 struct ccw1 *cp = cdev->private->iccws;

 cp[0].cmd_code = CCW_CMD_STLCK;
 cp[0].cda = (u32) (addr_t) buf1;
 cp[0].count = 32;
 cp[0].flags = CCW_FLAG_CC;
 cp[1].cmd_code = CCW_CMD_RELEASE;
 cp[1].cda = (u32) (addr_t) buf2;
 cp[1].count = 32;
 cp[1].flags = 0;
 req->cp = cp;
}
