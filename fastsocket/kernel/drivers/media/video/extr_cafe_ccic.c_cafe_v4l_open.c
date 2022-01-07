
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct cafe_camera* private_data; } ;
struct cafe_camera {scalar_t__ users; int s_mutex; } ;


 int __cafe_cam_reset (struct cafe_camera*) ;
 int cafe_ctlr_power_up (struct cafe_camera*) ;
 int cafe_set_config_needed (struct cafe_camera*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct cafe_camera* video_drvdata (struct file*) ;

__attribute__((used)) static int cafe_v4l_open(struct file *filp)
{
 struct cafe_camera *cam = video_drvdata(filp);

 filp->private_data = cam;

 mutex_lock(&cam->s_mutex);
 if (cam->users == 0) {
  cafe_ctlr_power_up(cam);
  __cafe_cam_reset(cam);
  cafe_set_config_needed(cam, 1);

 }
 (cam->users)++;
 mutex_unlock(&cam->s_mutex);
 return 0;
}
