
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hue; } ;
struct uvd {int videosize; scalar_t__ debug; int video_endp; TYPE_2__* dev; TYPE_1__ vpic; } ;
struct TYPE_5__ {int dev; } ;


 short FRAMERATE_MAX ;
 short FRAMERATE_MIN ;
 int RESTRICT_TO_RANGE (short,short,int) ;




 int dev_info (int *,char*,short) ;
 short framerate ;
 int ibmcam_model2_Packet1 (struct uvd*,int,int) ;
 int ibmcam_veio (struct uvd*,int ,int,int) ;
 short init_model2_rg2 ;
 short init_model2_sat ;
 short init_model2_yb ;
 int lighting ;
 int mod2_brightness ;
 int mod2_color_balance_rg2 ;
 int mod2_color_balance_yb ;
 int mod2_hue ;
 int mod2_saturation ;
 int mod2_sensitivity ;
 int mod2_set_framerate ;
 int usb_clear_halt (TYPE_2__*,int ) ;
 int usb_rcvisocpipe (TYPE_2__*,int ) ;

__attribute__((used)) static void ibmcam_model2_setup_after_video_if(struct uvd *uvd)
{
 unsigned short setup_model2_rg2, setup_model2_sat, setup_model2_yb;

 ibmcam_veio(uvd, 0, 0x0000, 0x0100);

 switch (uvd->videosize) {
 case 131:
  ibmcam_veio(uvd, 0, 0x0050, 0x0111);
  ibmcam_veio(uvd, 0, 0x00d0, 0x0111);
  break;
 case 130:
 case 129:
 case 128:
  ibmcam_veio(uvd, 0, 0x0040, 0x0111);
  ibmcam_veio(uvd, 0, 0x00c0, 0x0111);
  break;
 }
 ibmcam_veio(uvd, 0, 0x009b, 0x010f);
 ibmcam_veio(uvd, 0, 0x00bb, 0x010f);
 ibmcam_model2_Packet1(uvd, 0x000a, 0x005c);
 ibmcam_model2_Packet1(uvd, 0x0004, 0x0000);
 ibmcam_model2_Packet1(uvd, 0x0006, 0x00fb);
 ibmcam_model2_Packet1(uvd, 0x0008, 0x0000);
 ibmcam_model2_Packet1(uvd, 0x000c, 0x0009);
 ibmcam_model2_Packet1(uvd, 0x0012, 0x000a);
 ibmcam_model2_Packet1(uvd, 0x002a, 0x0000);
 ibmcam_model2_Packet1(uvd, 0x002c, 0x0000);
 ibmcam_model2_Packet1(uvd, 0x002e, 0x0008);






 ibmcam_model2_Packet1(uvd, 0x0030, 0x0000);





 switch (uvd->videosize) {
 case 131:
  ibmcam_model2_Packet1(uvd, 0x0014, 0x0002);
  ibmcam_model2_Packet1(uvd, 0x0016, 0x0002);
  ibmcam_model2_Packet1(uvd, 0x0018, 0x004a);
  break;
 case 130:
  ibmcam_model2_Packet1(uvd, 0x0014, 0x0009);
  ibmcam_model2_Packet1(uvd, 0x0016, 0x0005);
  ibmcam_model2_Packet1(uvd, 0x0018, 0x0044);
  break;
 case 129:

  ibmcam_model2_Packet1(uvd, 0x0014, 0x0009);
  ibmcam_model2_Packet1(uvd, 0x0016, 0x0003);
  ibmcam_model2_Packet1(uvd, 0x0018, 0x0044);
  break;
 case 128:
  ibmcam_model2_Packet1(uvd, 0x0014, 0x0003);
  ibmcam_model2_Packet1(uvd, 0x0016, 0x0002);
  ibmcam_model2_Packet1(uvd, 0x0018, 0x004a);
  break;
 }

 ibmcam_model2_Packet1(uvd, mod2_brightness, 0x005a);
 {
  short hw_fps=31, i_framerate;

  RESTRICT_TO_RANGE(framerate, FRAMERATE_MIN, FRAMERATE_MAX);
  i_framerate = FRAMERATE_MAX - framerate + FRAMERATE_MIN;
  switch (uvd->videosize) {
  case 131:
   hw_fps = 6 + i_framerate*4;
   break;
  case 130:
   hw_fps = 8 + i_framerate*3;
   break;
  case 129:
   hw_fps = 10 + i_framerate*2;
   break;
  case 128:
   hw_fps = 28 + i_framerate/2;
   break;
  }
  if (uvd->debug > 0)
   dev_info(&uvd->dev->dev, "Framerate (hardware): %hd.\n",
     hw_fps);
  RESTRICT_TO_RANGE(hw_fps, 0, 31);
  ibmcam_model2_Packet1(uvd, mod2_set_framerate, hw_fps);
 }







 switch (uvd->videosize) {
 case 131:
  ibmcam_model2_Packet1(uvd, 0x0026, 0x00c2);
  break;
 case 130:
  ibmcam_model2_Packet1(uvd, 0x0026, 0x0044);
  break;
 case 129:
  ibmcam_model2_Packet1(uvd, 0x0026, 0x0046);
  break;
 case 128:
  ibmcam_model2_Packet1(uvd, 0x0026, 0x0048);
  break;
 }

 ibmcam_model2_Packet1(uvd, mod2_sensitivity, lighting);

 if (init_model2_rg2 >= 0) {
  RESTRICT_TO_RANGE(init_model2_rg2, 0, 255);
  setup_model2_rg2 = init_model2_rg2;
 } else
  setup_model2_rg2 = 0x002f;

 if (init_model2_sat >= 0) {
  RESTRICT_TO_RANGE(init_model2_sat, 0, 255);
  setup_model2_sat = init_model2_sat;
 } else
  setup_model2_sat = 0x0034;

 if (init_model2_yb >= 0) {
  RESTRICT_TO_RANGE(init_model2_yb, 0, 255);
  setup_model2_yb = init_model2_yb;
 } else
  setup_model2_yb = 0x00a0;

 ibmcam_model2_Packet1(uvd, mod2_color_balance_rg2, setup_model2_rg2);
 ibmcam_model2_Packet1(uvd, mod2_saturation, setup_model2_sat);
 ibmcam_model2_Packet1(uvd, mod2_color_balance_yb, setup_model2_yb);
 ibmcam_model2_Packet1(uvd, mod2_hue, uvd->vpic.hue >> 9); ;


 ibmcam_model2_Packet1(uvd, 0x0030, 0x0004);

 ibmcam_veio(uvd, 0, 0x00c0, 0x010c);
 usb_clear_halt(uvd->dev, usb_rcvisocpipe(uvd->dev, uvd->video_endp));
}
