
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tea5764_device {int mutex; scalar_t__ users; TYPE_1__* videodev; } ;
struct file {struct tea5764_device* private_data; } ;
struct TYPE_4__ {int minor; } ;
struct TYPE_3__ {int minor; } ;


 int EBUSY ;
 int ENODEV ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_2__* video_devdata (struct file*) ;
 struct tea5764_device* video_drvdata (struct file*) ;

__attribute__((used)) static int tea5764_open(struct file *file)
{

 int minor = video_devdata(file)->minor;
 struct tea5764_device *radio = video_drvdata(file);

 if (radio->videodev->minor != minor)
  return -ENODEV;

 mutex_lock(&radio->mutex);

 if (radio->users) {
  mutex_unlock(&radio->mutex);
  return -EBUSY;
 }
 radio->users++;
 mutex_unlock(&radio->mutex);
 file->private_data = radio;
 return 0;
}
