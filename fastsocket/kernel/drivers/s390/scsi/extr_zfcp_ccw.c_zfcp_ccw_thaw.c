
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccw_device {int dummy; } ;


 int zfcp_ccw_activate (struct ccw_device*,int ,char*) ;

__attribute__((used)) static int zfcp_ccw_thaw(struct ccw_device *cdev)
{




 zfcp_ccw_activate(cdev, 0, "ccthaw1");
 return 0;
}
