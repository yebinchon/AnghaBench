
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvc_streaming_control {scalar_t__ bMaxVersion; scalar_t__ bMinVersion; scalar_t__ bPreferedVersion; scalar_t__ bmFramingInfo; int dwClockFrequency; int dwMaxPayloadTransferSize; int dwMaxVideoFrameSize; int wDelay; int wCompWindowSize; int wCompQuality; int wPFrameRate; int wKeyFrameRate; int dwFrameInterval; scalar_t__ bFrameIndex; scalar_t__ bFormatIndex; int bmHint; } ;
struct uvc_streaming {int intfnum; TYPE_1__* dev; } ;
typedef scalar_t__ __u8 ;
typedef int __u16 ;
typedef int __le32 ;
typedef int __le16 ;
struct TYPE_2__ {int uvc_version; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int UVC_SET_CUR ;
 int UVC_VS_COMMIT_CONTROL ;
 int UVC_VS_PROBE_CONTROL ;
 int __uvc_query_ctrl (TYPE_1__*,int ,int ,int ,int ,scalar_t__*,int,int ) ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int kfree (scalar_t__*) ;
 scalar_t__* kzalloc (int,int ) ;
 int put_unaligned_le32 (int ,scalar_t__*) ;
 int uvc_printk (int ,char*,char*,int,int) ;
 int uvc_timeout_param ;

__attribute__((used)) static int uvc_set_video_ctrl(struct uvc_streaming *stream,
 struct uvc_streaming_control *ctrl, int probe)
{
 __u8 *data;
 __u16 size;
 int ret;

 size = stream->dev->uvc_version >= 0x0110 ? 34 : 26;
 data = kzalloc(size, GFP_KERNEL);
 if (data == ((void*)0))
  return -ENOMEM;

 *(__le16 *)&data[0] = cpu_to_le16(ctrl->bmHint);
 data[2] = ctrl->bFormatIndex;
 data[3] = ctrl->bFrameIndex;
 *(__le32 *)&data[4] = cpu_to_le32(ctrl->dwFrameInterval);
 *(__le16 *)&data[8] = cpu_to_le16(ctrl->wKeyFrameRate);
 *(__le16 *)&data[10] = cpu_to_le16(ctrl->wPFrameRate);
 *(__le16 *)&data[12] = cpu_to_le16(ctrl->wCompQuality);
 *(__le16 *)&data[14] = cpu_to_le16(ctrl->wCompWindowSize);
 *(__le16 *)&data[16] = cpu_to_le16(ctrl->wDelay);
 put_unaligned_le32(ctrl->dwMaxVideoFrameSize, &data[18]);
 put_unaligned_le32(ctrl->dwMaxPayloadTransferSize, &data[22]);

 if (size == 34) {
  put_unaligned_le32(ctrl->dwClockFrequency, &data[26]);
  data[30] = ctrl->bmFramingInfo;
  data[31] = ctrl->bPreferedVersion;
  data[32] = ctrl->bMinVersion;
  data[33] = ctrl->bMaxVersion;
 }

 ret = __uvc_query_ctrl(stream->dev, UVC_SET_CUR, 0, stream->intfnum,
  probe ? UVC_VS_PROBE_CONTROL : UVC_VS_COMMIT_CONTROL, data,
  size, uvc_timeout_param);
 if (ret != size) {
  uvc_printk(KERN_ERR, "Failed to set UVC %s control : "
   "%d (exp. %u).\n", probe ? "probe" : "commit",
   ret, size);
  ret = -EIO;
 }

 kfree(data);
 return ret;
}
