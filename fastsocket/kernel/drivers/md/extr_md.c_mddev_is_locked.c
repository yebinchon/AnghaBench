
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int reconfig_mutex; } ;


 int mutex_is_locked (int *) ;

__attribute__((used)) static inline int mddev_is_locked(struct mddev *mddev)
{
 return mutex_is_locked(&mddev->reconfig_mutex);
}
