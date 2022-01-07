
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccwgroup_device {int dummy; } ;


 int __lcs_shutdown_device (struct ccwgroup_device*,int ) ;

__attribute__((used)) static int
lcs_shutdown_device(struct ccwgroup_device *ccwgdev)
{
 return __lcs_shutdown_device(ccwgdev, 0);
}
