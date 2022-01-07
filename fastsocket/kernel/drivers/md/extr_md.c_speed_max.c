
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int sync_speed_max; } ;


 int sysctl_speed_limit_max ;

__attribute__((used)) static inline int speed_max(struct mddev *mddev)
{
 return mddev->sync_speed_max ?
  mddev->sync_speed_max : sysctl_speed_limit_max;
}
