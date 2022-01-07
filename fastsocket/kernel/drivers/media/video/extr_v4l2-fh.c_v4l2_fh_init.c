
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {TYPE_1__* ioctl_ops; int flags; } ;
struct v4l2_fh {int * events; struct video_device* vdev; int list; } ;
struct TYPE_2__ {scalar_t__ vidioc_subscribe_event; } ;


 int INIT_LIST_HEAD (int *) ;
 int V4L2_FL_USES_V4L2_FH ;
 int set_bit (int ,int *) ;
 int v4l2_event_init (struct v4l2_fh*) ;

int v4l2_fh_init(struct v4l2_fh *fh, struct video_device *vdev)
{
 fh->vdev = vdev;
 INIT_LIST_HEAD(&fh->list);
 set_bit(V4L2_FL_USES_V4L2_FH, &fh->vdev->flags);





 if (vdev->ioctl_ops && vdev->ioctl_ops->vidioc_subscribe_event)
  return v4l2_event_init(fh);

 fh->events = ((void*)0);

 return 0;
}
