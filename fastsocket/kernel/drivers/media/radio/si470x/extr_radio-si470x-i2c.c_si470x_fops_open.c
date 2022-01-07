
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si470x_device {int users; int lock; } ;
struct file {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int si470x_start (struct si470x_device*) ;
 struct si470x_device* video_drvdata (struct file*) ;

__attribute__((used)) static int si470x_fops_open(struct file *file)
{
 struct si470x_device *radio = video_drvdata(file);
 int retval = 0;

 mutex_lock(&radio->lock);
 radio->users++;

 if (radio->users == 1)

  retval = si470x_start(radio);

 mutex_unlock(&radio->lock);

 return retval;
}
