
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct ivtv {TYPE_1__* streams; } ;
struct TYPE_2__ {struct video_device* vdev; } ;


 int IVTV_MAX_STREAMS ;
 int ivtv_stream_free (TYPE_1__*) ;
 int video_device_release (struct video_device*) ;
 int video_unregister_device (struct video_device*) ;

void ivtv_streams_cleanup(struct ivtv *itv, int unregister)
{
 int type;


 for (type = 0; type < IVTV_MAX_STREAMS; type++) {
  struct video_device *vdev = itv->streams[type].vdev;

  itv->streams[type].vdev = ((void*)0);
  if (vdev == ((void*)0))
   continue;

  ivtv_stream_free(&itv->streams[type]);

  if (unregister)
   video_unregister_device(vdev);
  else
   video_device_release(vdev);
 }
}
