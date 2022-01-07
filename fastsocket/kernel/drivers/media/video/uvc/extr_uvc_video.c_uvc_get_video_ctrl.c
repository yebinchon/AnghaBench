
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct uvc_streaming_control {scalar_t__ bMaxVersion; scalar_t__ bMinVersion; scalar_t__ bPreferedVersion; scalar_t__ bmFramingInfo; void* dwClockFrequency; void* dwMaxPayloadTransferSize; void* dwMaxVideoFrameSize; void* wDelay; void* wCompWindowSize; void* wCompQuality; void* wPFrameRate; void* wKeyFrameRate; int dwFrameInterval; scalar_t__ bFrameIndex; scalar_t__ bFormatIndex; void* bmHint; } ;
struct uvc_streaming {TYPE_1__* dev; int intfnum; } ;
typedef scalar_t__ __u8 ;
typedef int __u16 ;
typedef int __le32 ;
typedef int __le16 ;
struct TYPE_3__ {int uvc_version; int quirks; void* clock_frequency; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 scalar_t__ UVC_GET_DEF ;
 scalar_t__ UVC_GET_MAX ;
 scalar_t__ UVC_GET_MIN ;
 int UVC_QUIRK_PROBE_DEF ;
 int UVC_VS_COMMIT_CONTROL ;
 int UVC_VS_PROBE_CONTROL ;
 int UVC_WARN_MINMAX ;
 int UVC_WARN_PROBE_DEF ;
 int __uvc_query_ctrl (TYPE_1__*,scalar_t__,int ,int ,int ,scalar_t__*,int,int ) ;
 void* get_unaligned_le32 (scalar_t__*) ;
 int kfree (scalar_t__*) ;
 scalar_t__* kmalloc (int,int ) ;
 void* le16_to_cpup (int *) ;
 int le32_to_cpup (int *) ;
 int memset (struct uvc_streaming_control*,int ,int) ;
 int uvc_fixup_video_ctrl (struct uvc_streaming*,struct uvc_streaming_control*) ;
 int uvc_printk (int ,char*,scalar_t__,char*,int,int) ;
 int uvc_timeout_param ;
 int uvc_warn_once (TYPE_1__*,int ,char*) ;

__attribute__((used)) static int uvc_get_video_ctrl(struct uvc_streaming *stream,
 struct uvc_streaming_control *ctrl, int probe, __u8 query)
{
 __u8 *data;
 __u16 size;
 int ret;

 size = stream->dev->uvc_version >= 0x0110 ? 34 : 26;
 if ((stream->dev->quirks & UVC_QUIRK_PROBE_DEF) &&
   query == UVC_GET_DEF)
  return -EIO;

 data = kmalloc(size, GFP_KERNEL);
 if (data == ((void*)0))
  return -ENOMEM;

 ret = __uvc_query_ctrl(stream->dev, query, 0, stream->intfnum,
  probe ? UVC_VS_PROBE_CONTROL : UVC_VS_COMMIT_CONTROL, data,
  size, uvc_timeout_param);

 if ((query == UVC_GET_MIN || query == UVC_GET_MAX) && ret == 2) {




  uvc_warn_once(stream->dev, UVC_WARN_MINMAX, "UVC non "
   "compliance - GET_MIN/MAX(PROBE) incorrectly "
   "supported. Enabling workaround.\n");
  memset(ctrl, 0, sizeof *ctrl);
  ctrl->wCompQuality = le16_to_cpup((__le16 *)data);
  ret = 0;
  goto out;
 } else if (query == UVC_GET_DEF && probe == 1 && ret != size) {




  uvc_warn_once(stream->dev, UVC_WARN_PROBE_DEF, "UVC non "
   "compliance - GET_DEF(PROBE) not supported. "
   "Enabling workaround.\n");
  ret = -EIO;
  goto out;
 } else if (ret != size) {
  uvc_printk(KERN_ERR, "Failed to query (%u) UVC %s control : "
   "%d (exp. %u).\n", query, probe ? "probe" : "commit",
   ret, size);
  ret = -EIO;
  goto out;
 }

 ctrl->bmHint = le16_to_cpup((__le16 *)&data[0]);
 ctrl->bFormatIndex = data[2];
 ctrl->bFrameIndex = data[3];
 ctrl->dwFrameInterval = le32_to_cpup((__le32 *)&data[4]);
 ctrl->wKeyFrameRate = le16_to_cpup((__le16 *)&data[8]);
 ctrl->wPFrameRate = le16_to_cpup((__le16 *)&data[10]);
 ctrl->wCompQuality = le16_to_cpup((__le16 *)&data[12]);
 ctrl->wCompWindowSize = le16_to_cpup((__le16 *)&data[14]);
 ctrl->wDelay = le16_to_cpup((__le16 *)&data[16]);
 ctrl->dwMaxVideoFrameSize = get_unaligned_le32(&data[18]);
 ctrl->dwMaxPayloadTransferSize = get_unaligned_le32(&data[22]);

 if (size == 34) {
  ctrl->dwClockFrequency = get_unaligned_le32(&data[26]);
  ctrl->bmFramingInfo = data[30];
  ctrl->bPreferedVersion = data[31];
  ctrl->bMinVersion = data[32];
  ctrl->bMaxVersion = data[33];
 } else {
  ctrl->dwClockFrequency = stream->dev->clock_frequency;
  ctrl->bmFramingInfo = 0;
  ctrl->bPreferedVersion = 0;
  ctrl->bMinVersion = 0;
  ctrl->bMaxVersion = 0;
 }





 uvc_fixup_video_ctrl(stream, ctrl);
 ret = 0;

out:
 kfree(data);
 return ret;
}
