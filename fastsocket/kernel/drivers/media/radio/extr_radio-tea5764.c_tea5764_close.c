
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tea5764_device {int mutex; int users; } ;
struct file {int dummy; } ;


 int ENODEV ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct tea5764_device* video_drvdata (struct file*) ;

__attribute__((used)) static int tea5764_close(struct file *file)
{
 struct tea5764_device *radio = video_drvdata(file);

 if (!radio)
  return -ENODEV;
 mutex_lock(&radio->mutex);
 radio->users--;
 mutex_unlock(&radio->mutex);
 return 0;
}
