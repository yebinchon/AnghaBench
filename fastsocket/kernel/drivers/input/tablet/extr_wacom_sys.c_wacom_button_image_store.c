
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom {int lock; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct wacom* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wacom_led_putimage (struct wacom*,int,char const*) ;

__attribute__((used)) static ssize_t wacom_button_image_store(struct device *dev, int button_id,
     const char *buf, size_t count)
{
 struct wacom *wacom = dev_get_drvdata(dev);
 int err;

 if (count != 1024)
  return -EINVAL;

 mutex_lock(&wacom->lock);

 err = wacom_led_putimage(wacom, button_id, buf);

 mutex_unlock(&wacom->lock);

 return err < 0 ? err : count;
}
