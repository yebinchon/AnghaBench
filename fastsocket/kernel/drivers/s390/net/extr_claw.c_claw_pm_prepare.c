
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccwgroup_device {int dummy; } ;


 int EPERM ;

__attribute__((used)) static int claw_pm_prepare(struct ccwgroup_device *gdev)
{
 return -EPERM;
}
