
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sliced; } ;
struct v4l2_format {TYPE_1__ fmt; int type; } ;
struct pvr2_hdw {scalar_t__ decoder_client_id; int v4l2_dev; } ;
typedef int fmt ;


 scalar_t__ PVR2_CLIENT_ID_CX25840 ;
 int PVR2_TRACE_INIT ;
 int V4L2_BUF_TYPE_SLICED_VBI_CAPTURE ;
 int memset (struct v4l2_format*,int ,int) ;
 int pvr2_trace (int ,char*,scalar_t__) ;
 int s_sliced_fmt ;
 int v4l2_device_call_all (int *,scalar_t__,int ,int ,int *) ;
 int vbi ;

__attribute__((used)) static void pvr2_hdw_cx25840_vbi_hack(struct pvr2_hdw *hdw)
{
 struct v4l2_format fmt;
 if (hdw->decoder_client_id != PVR2_CLIENT_ID_CX25840) {

  return;
 }

 pvr2_trace(PVR2_TRACE_INIT,
     "Module ID %u:"
     " Executing cx25840 VBI hack",
     hdw->decoder_client_id);
 memset(&fmt, 0, sizeof(fmt));
 fmt.type = V4L2_BUF_TYPE_SLICED_VBI_CAPTURE;
 v4l2_device_call_all(&hdw->v4l2_dev, hdw->decoder_client_id,
        vbi, s_sliced_fmt, &fmt.fmt.sliced);
}
