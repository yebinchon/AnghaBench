
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv_open_id {struct ivtv* itv; } ;
struct ivtv {int serialize_lock; } ;
struct file {int private_data; } ;


 unsigned int VIDIOC_DQEVENT ;
 struct ivtv_open_id* fh2id (int ) ;
 long ivtv_serialized_ioctl (struct ivtv*,struct file*,unsigned int,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

long ivtv_v4l2_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
{
 struct ivtv_open_id *id = fh2id(filp->private_data);
 struct ivtv *itv = id->itv;
 long res;


 if (cmd == VIDIOC_DQEVENT)
  return ivtv_serialized_ioctl(itv, filp, cmd, arg);
 mutex_lock(&itv->serialize_lock);
 res = ivtv_serialized_ioctl(itv, filp, cmd, arg);
 mutex_unlock(&itv->serialize_lock);
 return res;
}
