
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int reconfig_mutex; } ;


 int mutex_trylock (int *) ;

__attribute__((used)) static inline int mddev_trylock(struct mddev * mddev)
{
 return mutex_trylock(&mddev->reconfig_mutex);
}
