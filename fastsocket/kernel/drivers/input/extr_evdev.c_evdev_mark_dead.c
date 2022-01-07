
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev {int mutex; scalar_t__ exist; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void evdev_mark_dead(struct evdev *evdev)
{
 mutex_lock(&evdev->mutex);
 evdev->exist = 0;
 mutex_unlock(&evdev->mutex);
}
