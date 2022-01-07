
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_device {int dummy; } ;
typedef int __u8 ;


 int UVC_TRACE_STATUS ;
 int uvc_trace (int ,char*,...) ;

__attribute__((used)) static void uvc_event_control(struct uvc_device *dev, __u8 *data, int len)
{
 char *attrs[3] = { "value", "info", "failure" };

 if (len < 6 || data[2] != 0 || data[4] > 2) {
  uvc_trace(UVC_TRACE_STATUS, "Invalid control status event "
    "received.\n");
  return;
 }

 uvc_trace(UVC_TRACE_STATUS, "Control %u/%u %s change len %d.\n",
  data[1], data[3], attrs[data[4]], len);
}
