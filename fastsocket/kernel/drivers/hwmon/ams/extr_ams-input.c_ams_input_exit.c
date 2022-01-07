
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* of_dev; } ;
struct TYPE_3__ {int dev; } ;


 TYPE_2__ ams_info ;
 int ams_input_disable () ;
 int ams_input_mutex ;
 int dev_attr_joystick ;
 int device_remove_file (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ams_input_exit(void)
{
 device_remove_file(&ams_info.of_dev->dev, &dev_attr_joystick);

 mutex_lock(&ams_input_mutex);
 ams_input_disable();
 mutex_unlock(&ams_input_mutex);
}
