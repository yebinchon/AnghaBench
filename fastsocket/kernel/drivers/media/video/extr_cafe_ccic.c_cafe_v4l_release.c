
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct cafe_camera* private_data; } ;
struct cafe_camera {scalar_t__ users; int s_mutex; struct file* owner; } ;


 scalar_t__ alloc_bufs_at_read ;
 int cafe_ctlr_power_down (struct cafe_camera*) ;
 int cafe_ctlr_stop_dma (struct cafe_camera*) ;
 int cafe_free_dma_bufs (struct cafe_camera*) ;
 int cafe_free_sio_buffers (struct cafe_camera*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cafe_v4l_release(struct file *filp)
{
 struct cafe_camera *cam = filp->private_data;

 mutex_lock(&cam->s_mutex);
 (cam->users)--;
 if (filp == cam->owner) {
  cafe_ctlr_stop_dma(cam);
  cafe_free_sio_buffers(cam);
  cam->owner = ((void*)0);
 }
 if (cam->users == 0) {
  cafe_ctlr_power_down(cam);
  if (alloc_bufs_at_read)
   cafe_free_dma_bufs(cam);
 }
 mutex_unlock(&cam->s_mutex);
 return 0;
}
