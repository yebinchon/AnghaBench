
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned char contrast; } ;
struct TYPE_4__ {int contrast; } ;
struct uvd {int video_endp; int dev; TYPE_2__ vpic_old; TYPE_1__ vpic; } ;
struct TYPE_6__ {int camera_model; } ;






 TYPE_3__* IBMCAM_T (struct uvd*) ;
 int RESTRICT_TO_RANGE (int,int ,int) ;
 int contrast_14 ;
 int ibmcam_Packet_Format1 (struct uvd*,int ,unsigned char) ;
 int ibmcam_model3_Packet1 (struct uvd*,int,unsigned short) ;
 int ibmcam_send_FF_04_02 (struct uvd*) ;
 int ibmcam_veio (struct uvd*,int ,int,int) ;
 int usb_clear_halt (int ,int ) ;
 int usb_rcvisocpipe (int ,int ) ;

__attribute__((used)) static void ibmcam_adjust_contrast(struct uvd *uvd)
{
 unsigned char a_contrast = uvd->vpic.contrast >> 12;
 unsigned char new_contrast;

 if (a_contrast >= 16)
  a_contrast = 15;
 new_contrast = 15 - a_contrast;
 if (new_contrast == uvd->vpic_old.contrast)
  return;
 uvd->vpic_old.contrast = new_contrast;
 switch (IBMCAM_T(uvd)->camera_model) {
 case 131:
 {
  const int ntries = 5;
  int i;
  for (i=0; i < ntries; i++) {
   ibmcam_Packet_Format1(uvd, contrast_14, new_contrast);
   ibmcam_send_FF_04_02(uvd);
  }
  break;
 }
 case 130:
 case 128:

  break;
 case 129:
 {
  static const struct {
   unsigned short cv1;
   unsigned short cv2;
   unsigned short cv3;
  } cv[7] = {
   { 0x05, 0x05, 0x0f },
   { 0x04, 0x04, 0x16 },
   { 0x02, 0x03, 0x16 },
   { 0x02, 0x08, 0x16 },
   { 0x01, 0x0c, 0x16 },
   { 0x01, 0x0e, 0x16 },
   { 0x01, 0x10, 0x16 }
  };
  int i = a_contrast / 2;
  RESTRICT_TO_RANGE(i, 0, 6);
  ibmcam_veio(uvd, 0, 0x0000, 0x010c);
  ibmcam_model3_Packet1(uvd, 0x0067, cv[i].cv1);
  ibmcam_model3_Packet1(uvd, 0x005b, cv[i].cv2);
  ibmcam_model3_Packet1(uvd, 0x005c, cv[i].cv3);
  ibmcam_veio(uvd, 0, 0x0001, 0x0114);
  ibmcam_veio(uvd, 0, 0x00c0, 0x010c);
  usb_clear_halt(uvd->dev, usb_rcvisocpipe(uvd->dev, uvd->video_endp));
  break;
 }
 default:
  break;
 }
}
