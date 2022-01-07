
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccwgroup_device {int dummy; } ;


 int __qeth_l3_set_online (struct ccwgroup_device*,int ) ;

__attribute__((used)) static int qeth_l3_set_online(struct ccwgroup_device *gdev)
{
 return __qeth_l3_set_online(gdev, 0);
}
