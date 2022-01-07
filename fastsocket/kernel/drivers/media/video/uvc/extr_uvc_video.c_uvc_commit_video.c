
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_streaming_control {int dummy; } ;
struct uvc_streaming {int dummy; } ;


 int uvc_set_video_ctrl (struct uvc_streaming*,struct uvc_streaming_control*,int ) ;

int uvc_commit_video(struct uvc_streaming *stream,
 struct uvc_streaming_control *probe)
{
 return uvc_set_video_ctrl(stream, probe, 0);
}
