
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int* select; } ;
struct wacom {int lock; TYPE_1__ led; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct wacom* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned int simple_strtoul (char const*,int *,int ) ;
 int wacom_led_control (struct wacom*) ;

__attribute__((used)) static ssize_t wacom_led_select_store(struct device *dev, int set_id,
          const char *buf, size_t count)
{
 struct wacom *wacom = dev_get_drvdata(dev);
 unsigned int id;
 int err;

 id = simple_strtoul(buf, ((void*)0), 0);

 mutex_lock(&wacom->lock);

 wacom->led.select[set_id] = id & 0x3;
 err = wacom_led_control(wacom);

 mutex_unlock(&wacom->lock);

 return err < 0 ? err : count;
}
