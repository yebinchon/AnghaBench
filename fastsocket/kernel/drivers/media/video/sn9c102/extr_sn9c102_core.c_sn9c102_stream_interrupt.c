
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sn9c102_device {scalar_t__ stream; int state; TYPE_1__* v4ldev; int wait_stream; } ;
struct TYPE_2__ {int num; } ;


 int DBG (int,char*,int ) ;
 int DEV_DISCONNECTED ;
 int DEV_MISCONFIGURED ;
 int EIO ;
 int ENODEV ;
 int SN9C102_URB_TIMEOUT ;
 scalar_t__ STREAM_INTERRUPT ;
 scalar_t__ STREAM_OFF ;
 long wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int sn9c102_stream_interrupt(struct sn9c102_device* cam)
{
 long timeout;

 cam->stream = STREAM_INTERRUPT;
 timeout = wait_event_timeout(cam->wait_stream,
         (cam->stream == STREAM_OFF) ||
         (cam->state & DEV_DISCONNECTED),
         SN9C102_URB_TIMEOUT);
 if (cam->state & DEV_DISCONNECTED)
  return -ENODEV;
 else if (cam->stream != STREAM_OFF) {
  cam->state |= DEV_MISCONFIGURED;
  DBG(1, "URB timeout reached. The camera is misconfigured. "
         "To use it, close and open /dev/video%d again.",
      cam->v4ldev->num);
  return -EIO;
 }

 return 0;
}
