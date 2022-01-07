
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vino_channel_settings {scalar_t__ channel; int mutex; scalar_t__ users; } ;
struct file {int dummy; } ;


 int EBUSY ;
 scalar_t__ VINO_CHANNEL_A ;
 int dprintk (char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vino_channel_settings* video_drvdata (struct file*) ;
 int vino_acquire_input (struct vino_channel_settings*) ;

__attribute__((used)) static int vino_open(struct file *file)
{
 struct vino_channel_settings *vcs = video_drvdata(file);
 int ret = 0;
 dprintk("open(): channel = %c\n",
        (vcs->channel == VINO_CHANNEL_A) ? 'A' : 'B');

 mutex_lock(&vcs->mutex);

 if (vcs->users) {
  dprintk("open(): driver busy\n");
  ret = -EBUSY;
  goto out;
 }

 ret = vino_acquire_input(vcs);
 if (ret) {
  dprintk("open(): vino_acquire_input() failed\n");
  goto out;
 }

 vcs->users++;

 out:
 mutex_unlock(&vcs->mutex);

 dprintk("open(): %s!\n", ret ? "failed" : "complete");

 return ret;
}
