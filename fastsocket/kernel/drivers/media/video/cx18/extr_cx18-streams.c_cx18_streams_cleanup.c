
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct cx18 {scalar_t__* stream_buffers; TYPE_1__* streams; } ;
struct TYPE_3__ {struct video_device* video_dev; int * dvb; } ;


 int CX18_ENC_STREAM_TYPE_IDX ;
 int CX18_ENC_STREAM_TYPE_TS ;
 int CX18_MAX_STREAMS ;
 int cx18_dvb_unregister (TYPE_1__*) ;
 int cx18_stream_free (TYPE_1__*) ;
 int kfree (int *) ;
 int video_device_release (struct video_device*) ;
 int video_unregister_device (struct video_device*) ;

void cx18_streams_cleanup(struct cx18 *cx, int unregister)
{
 struct video_device *vdev;
 int type;


 for (type = 0; type < CX18_MAX_STREAMS; type++) {


  if (type == CX18_ENC_STREAM_TYPE_TS) {
   if (cx->streams[type].dvb != ((void*)0)) {
    if (unregister)
     cx18_dvb_unregister(&cx->streams[type]);
    kfree(cx->streams[type].dvb);
    cx->streams[type].dvb = ((void*)0);
    cx18_stream_free(&cx->streams[type]);
   }
   continue;
  }


  if (type == CX18_ENC_STREAM_TYPE_IDX) {
   if (cx->stream_buffers[type] != 0) {
    cx->stream_buffers[type] = 0;
    cx18_stream_free(&cx->streams[type]);
   }
   continue;
  }


  vdev = cx->streams[type].video_dev;

  cx->streams[type].video_dev = ((void*)0);
  if (vdev == ((void*)0))
   continue;

  cx18_stream_free(&cx->streams[type]);


  if (unregister)
   video_unregister_device(vdev);
  else
   video_device_release(vdev);
 }
}
