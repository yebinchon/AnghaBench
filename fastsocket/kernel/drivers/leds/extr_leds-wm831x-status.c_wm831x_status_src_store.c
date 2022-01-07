
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_status {int src; int mutex; int work; } ;
struct led_classdev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
typedef int name ;


 int ARRAY_SIZE (int *) ;
 struct led_classdev* dev_get_drvdata (struct device*) ;
 int * led_src_texts ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;
 int strcmp (char*,int ) ;
 size_t strlen (char*) ;
 int strncpy (char*,char const*,int) ;
 struct wm831x_status* to_wm831x_status (struct led_classdev*) ;

__attribute__((used)) static ssize_t wm831x_status_src_store(struct device *dev,
           struct device_attribute *attr,
           const char *buf, size_t size)
{
 struct led_classdev *led_cdev = dev_get_drvdata(dev);
 struct wm831x_status *led = to_wm831x_status(led_cdev);
 char name[20];
 int i;
 size_t len;

 name[sizeof(name) - 1] = '\0';
 strncpy(name, buf, sizeof(name) - 1);
 len = strlen(name);

 if (len && name[len - 1] == '\n')
  name[len - 1] = '\0';

 for (i = 0; i < ARRAY_SIZE(led_src_texts); i++) {
  if (!strcmp(name, led_src_texts[i])) {
   mutex_lock(&led->mutex);

   led->src = i;
   schedule_work(&led->work);

   mutex_unlock(&led->mutex);
  }
 }

 return size;
}
