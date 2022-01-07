
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvd {int video_endp; int dev; } ;
struct TYPE_2__ {int camera_model; } ;






 TYPE_1__* IBMCAM_T (struct uvd*) ;
 int ibmcam_model1_setup_after_video_if (struct uvd*) ;
 int ibmcam_model2_setup_after_video_if (struct uvd*) ;
 int ibmcam_model3_setup_after_video_if (struct uvd*) ;
 int ibmcam_model4_setup_after_video_if (struct uvd*) ;
 int ibmcam_veio (struct uvd*,int ,int,int) ;
 int ibmcam_video_stop (struct uvd*) ;
 int usb_clear_halt (int ,int ) ;
 int usb_rcvisocpipe (int ,int ) ;

__attribute__((used)) static void ibmcam_reinit_iso(struct uvd *uvd, int do_stop)
{
 switch (IBMCAM_T(uvd)->camera_model) {
 case 131:
  if (do_stop)
   ibmcam_video_stop(uvd);
  ibmcam_veio(uvd, 0, 0x0001, 0x0114);
  ibmcam_veio(uvd, 0, 0x00c0, 0x010c);
  usb_clear_halt(uvd->dev, usb_rcvisocpipe(uvd->dev, uvd->video_endp));
  ibmcam_model1_setup_after_video_if(uvd);
  break;
 case 130:
  ibmcam_model2_setup_after_video_if(uvd);
  break;
 case 129:
  ibmcam_video_stop(uvd);
  ibmcam_model3_setup_after_video_if(uvd);
  break;
 case 128:
  ibmcam_model4_setup_after_video_if(uvd);
  break;
 }
}
