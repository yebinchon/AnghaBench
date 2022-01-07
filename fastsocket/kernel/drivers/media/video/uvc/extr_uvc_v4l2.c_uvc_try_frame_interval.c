
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_frame {int bFrameIntervalType; scalar_t__* dwFrameInterval; } ;
typedef scalar_t__ __u32 ;



__attribute__((used)) static __u32 uvc_try_frame_interval(struct uvc_frame *frame, __u32 interval)
{
 unsigned int i;

 if (frame->bFrameIntervalType) {
  __u32 best = -1, dist;

  for (i = 0; i < frame->bFrameIntervalType; ++i) {
   dist = interval > frame->dwFrameInterval[i]
        ? interval - frame->dwFrameInterval[i]
        : frame->dwFrameInterval[i] - interval;

   if (dist > best)
    break;

   best = dist;
  }

  interval = frame->dwFrameInterval[i-1];
 } else {
  const __u32 min = frame->dwFrameInterval[0];
  const __u32 max = frame->dwFrameInterval[1];
  const __u32 step = frame->dwFrameInterval[2];

  interval = min + (interval - min + step/2) / step * step;
  if (interval > max)
   interval = max;
 }

 return interval;
}
