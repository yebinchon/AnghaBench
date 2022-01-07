
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vino_channel_settings {int mutex; int fb_queue; int users; } ;
struct file {int dummy; } ;


 int dprintk (char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vino_channel_settings* video_drvdata (struct file*) ;
 int vino_capture_stop (struct vino_channel_settings*) ;
 int vino_queue_free (int *) ;
 int vino_release_input (struct vino_channel_settings*) ;

__attribute__((used)) static int vino_close(struct file *file)
{
 struct vino_channel_settings *vcs = video_drvdata(file);
 dprintk("close():\n");

 mutex_lock(&vcs->mutex);

 vcs->users--;

 if (!vcs->users) {
  vino_release_input(vcs);


  vino_capture_stop(vcs);
  vino_queue_free(&vcs->fb_queue);
 }

 mutex_unlock(&vcs->mutex);

 return 0;
}
