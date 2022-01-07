
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct joydev {int mutex; int handle; int open; scalar_t__ exist; } ;


 int input_close_device (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void joydev_close_device(struct joydev *joydev)
{
 mutex_lock(&joydev->mutex);

 if (joydev->exist && !--joydev->open)
  input_close_device(&joydev->handle);

 mutex_unlock(&joydev->mutex);
}
