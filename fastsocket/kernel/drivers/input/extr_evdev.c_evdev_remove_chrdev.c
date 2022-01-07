
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev {size_t minor; } ;


 int ** evdev_table ;
 int evdev_table_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void evdev_remove_chrdev(struct evdev *evdev)
{



 mutex_lock(&evdev_table_mutex);
 evdev_table[evdev->minor] = ((void*)0);
 mutex_unlock(&evdev_table_mutex);
}
