
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_streaming {int queue; int ctrl; scalar_t__ frozen; } ;


 int GFP_NOIO ;
 int uvc_commit_video (struct uvc_streaming*,int *) ;
 int uvc_init_video (struct uvc_streaming*,int ) ;
 int uvc_queue_enable (int *,int ) ;
 int uvc_queue_streaming (int *) ;

int uvc_video_resume(struct uvc_streaming *stream)
{
 int ret;

 stream->frozen = 0;

 ret = uvc_commit_video(stream, &stream->ctrl);
 if (ret < 0) {
  uvc_queue_enable(&stream->queue, 0);
  return ret;
 }

 if (!uvc_queue_streaming(&stream->queue))
  return 0;

 ret = uvc_init_video(stream, GFP_NOIO);
 if (ret < 0)
  uvc_queue_enable(&stream->queue, 0);

 return ret;
}
