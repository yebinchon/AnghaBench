
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct ivtv_stream {struct ivtv* itv; } ;
struct ivtv {int serialize_lock; } ;
struct file {int dummy; } ;


 int ENXIO ;
 int IVTV_ERR (char*,int ) ;
 scalar_t__ ivtv_init_on_first_open (struct ivtv*) ;
 int ivtv_serialized_open (struct ivtv_stream*,struct file*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct video_device* video_devdata (struct file*) ;
 int video_device_node_name (struct video_device*) ;
 struct ivtv_stream* video_get_drvdata (struct video_device*) ;

int ivtv_v4l2_open(struct file *filp)
{
 int res;
 struct ivtv *itv = ((void*)0);
 struct ivtv_stream *s = ((void*)0);
 struct video_device *vdev = video_devdata(filp);

 s = video_get_drvdata(vdev);
 itv = s->itv;

 mutex_lock(&itv->serialize_lock);
 if (ivtv_init_on_first_open(itv)) {
  IVTV_ERR("Failed to initialize on device %s\n",
    video_device_node_name(vdev));
  mutex_unlock(&itv->serialize_lock);
  return -ENXIO;
 }
 res = ivtv_serialized_open(s, filp);
 mutex_unlock(&itv->serialize_lock);
 return res;
}
