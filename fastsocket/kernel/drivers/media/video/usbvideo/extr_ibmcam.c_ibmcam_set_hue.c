
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int hue; } ;
struct TYPE_4__ {unsigned short hue; } ;
struct uvd {int videosize; TYPE_2__ vpic; int video_endp; int dev; TYPE_1__ vpic_old; } ;
struct TYPE_6__ {int camera_model; } ;





 TYPE_3__* IBMCAM_T (struct uvd*) ;
 int RESTRICT_TO_RANGE (unsigned short,int,int) ;



 int ibmcam_model2_Packet1 (struct uvd*,int ,unsigned short) ;
 int ibmcam_model3_Packet1 (struct uvd*,int,unsigned short) ;
 int ibmcam_veio (struct uvd*,int ,int,int) ;
 int mod2_hue ;
 int usb_clear_halt (int ,int ) ;
 int usb_rcvisocpipe (int ,int ) ;

__attribute__((used)) static void ibmcam_set_hue(struct uvd *uvd)
{
 switch (IBMCAM_T(uvd)->camera_model) {
 case 133:
 {
  unsigned short hue = uvd->vpic.hue >> 9;
  if (uvd->vpic_old.hue == hue)
   return;
  uvd->vpic_old.hue = hue;
  ibmcam_model2_Packet1(uvd, mod2_hue, hue);

  break;
 }
 case 132:
 {
  break;
 }
 case 131:
 {
  unsigned short r_gain, g_gain, b_gain, hue;
  hue = 20 + (uvd->vpic.hue >> 9);
  switch (uvd->videosize) {
  case 130:
   r_gain = 90;
   g_gain = 166;
   b_gain = 175;
   break;
  case 129:
   r_gain = 70;
   g_gain = 166;
   b_gain = 185;
   break;
  case 128:
   r_gain = 160;
   g_gain = 175;
   b_gain = 185;
   break;
  default:
   r_gain = 120;
   g_gain = 166;
   b_gain = 175;
   break;
  }
  RESTRICT_TO_RANGE(hue, 1, 0x7f);

  ibmcam_veio(uvd, 0, 0x00aa, 0x012d);
  ibmcam_veio(uvd, 0, 0x001e, 0x012f);
  ibmcam_veio(uvd, 0, 0xd141, 0x0124);
  ibmcam_veio(uvd, 0, g_gain, 0x0127);
  ibmcam_veio(uvd, 0, r_gain, 0x012e);
  ibmcam_veio(uvd, 0, b_gain, 0x0130);
  ibmcam_veio(uvd, 0, 0x8a28, 0x0124);
  ibmcam_veio(uvd, 0, hue, 0x012d);
  ibmcam_veio(uvd, 0, 0xf545, 0x0124);
  break;
 }
 default:
  break;
 }
}
