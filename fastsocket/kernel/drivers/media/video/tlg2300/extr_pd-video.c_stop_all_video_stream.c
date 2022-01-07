
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_data {struct front_face* front; scalar_t__ is_streaming; } ;
struct vbi_data {struct front_face* front; } ;
struct poseidon {int lock; struct vbi_data vbi_data; struct video_data video_data; } ;
struct front_face {int q; } ;


 int free_all_urb (struct video_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_transfer_stop (struct video_data*) ;
 int videobuf_mmap_free (int *) ;
 int videobuf_stop (int *) ;

int stop_all_video_stream(struct poseidon *pd)
{
 struct video_data *video = &pd->video_data;
 struct vbi_data *vbi = &pd->vbi_data;

 mutex_lock(&pd->lock);
 if (video->is_streaming) {
  struct front_face *front = video->front;


  usb_transfer_stop(video);
  free_all_urb(video);


  videobuf_stop(&front->q);
  videobuf_mmap_free(&front->q);


  front = vbi->front;
  if (front) {
   videobuf_stop(&front->q);
   videobuf_mmap_free(&front->q);
  }
 }
 mutex_unlock(&pd->lock);
 return 0;
}
