
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int rangehigh; int rangelow; int capability; int rxsubchans; int signal; int type; } ;
struct pvr2_hdw {scalar_t__ cropcap_stale; struct v4l2_tuner tuner_signal_info; int v4l2_dev; scalar_t__ tuner_signal_stale; } ;


 int PVR2_TRACE_CHIPS ;
 int g_tuner ;
 int memset (struct v4l2_tuner*,int ,int) ;
 int pvr2_trace (int ,char*,int ,int ,int ,int ,int ,int ) ;
 int tuner ;
 int v4l2_device_call_all (int *,int ,int ,int ,struct v4l2_tuner*) ;

void pvr2_hdw_status_poll(struct pvr2_hdw *hdw)
{
 struct v4l2_tuner *vtp = &hdw->tuner_signal_info;
 memset(vtp, 0, sizeof(*vtp));
 hdw->tuner_signal_stale = 0;




 v4l2_device_call_all(&hdw->v4l2_dev, 0, tuner, g_tuner,
        &hdw->tuner_signal_info);
 pvr2_trace(PVR2_TRACE_CHIPS, "subdev status poll"
     " type=%u strength=%u audio=0x%x cap=0x%x"
     " low=%u hi=%u",
     vtp->type,
     vtp->signal, vtp->rxsubchans, vtp->capability,
     vtp->rangelow, vtp->rangehigh);



 hdw->cropcap_stale = 0;
}
