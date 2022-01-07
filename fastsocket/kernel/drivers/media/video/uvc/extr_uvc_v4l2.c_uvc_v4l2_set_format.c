
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {scalar_t__ type; } ;
struct uvc_streaming_control {int dummy; } ;
struct uvc_streaming {scalar_t__ type; int mutex; struct uvc_frame* cur_frame; struct uvc_format* cur_format; int ctrl; int queue; } ;
struct uvc_frame {int dummy; } ;
struct uvc_format {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int memcpy (int *,struct uvc_streaming_control*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ uvc_queue_allocated (int *) ;
 int uvc_v4l2_try_format (struct uvc_streaming*,struct v4l2_format*,struct uvc_streaming_control*,struct uvc_format**,struct uvc_frame**) ;

__attribute__((used)) static int uvc_v4l2_set_format(struct uvc_streaming *stream,
 struct v4l2_format *fmt)
{
 struct uvc_streaming_control probe;
 struct uvc_format *format;
 struct uvc_frame *frame;
 int ret;

 if (fmt->type != stream->type)
  return -EINVAL;

 ret = uvc_v4l2_try_format(stream, fmt, &probe, &format, &frame);
 if (ret < 0)
  return ret;

 mutex_lock(&stream->mutex);

 if (uvc_queue_allocated(&stream->queue)) {
  ret = -EBUSY;
  goto done;
 }

 memcpy(&stream->ctrl, &probe, sizeof probe);
 stream->cur_format = format;
 stream->cur_frame = frame;

done:
 mutex_unlock(&stream->mutex);
 return ret;
}
