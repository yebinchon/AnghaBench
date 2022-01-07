
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvd {int dummy; } ;
struct TYPE_2__ {int camera_model; int initialized; } ;






 TYPE_1__* IBMCAM_T (struct uvd*) ;
 int ibmcam_model2_Packet1 (struct uvd*,int,int) ;
 int ibmcam_model3_Packet1 (struct uvd*,int,int) ;
 int ibmcam_send_FF_04_02 (struct uvd*) ;
 int ibmcam_veio (struct uvd*,int,int,int) ;

__attribute__((used)) static void ibmcam_video_stop(struct uvd *uvd)
{
 switch (IBMCAM_T(uvd)->camera_model) {
 case 131:
  ibmcam_veio(uvd, 0, 0x00, 0x010c);
  ibmcam_veio(uvd, 0, 0x00, 0x010c);
  ibmcam_veio(uvd, 0, 0x01, 0x0114);
  ibmcam_veio(uvd, 0, 0xc0, 0x010c);
  ibmcam_veio(uvd, 0, 0x00, 0x010c);
  ibmcam_send_FF_04_02(uvd);
  ibmcam_veio(uvd, 1, 0x00, 0x0100);
  ibmcam_veio(uvd, 0, 0x81, 0x0100);
  break;
 case 130:
case 128:
  ibmcam_veio(uvd, 0, 0x0000, 0x010c);

  ibmcam_model2_Packet1(uvd, 0x0030, 0x0004);

  ibmcam_veio(uvd, 0, 0x0080, 0x0100);
  ibmcam_veio(uvd, 0, 0x0020, 0x0111);
  ibmcam_veio(uvd, 0, 0x00a0, 0x0111);

  ibmcam_model2_Packet1(uvd, 0x0030, 0x0002);

  ibmcam_veio(uvd, 0, 0x0020, 0x0111);
  ibmcam_veio(uvd, 0, 0x0000, 0x0112);
  break;
 case 129:

  ibmcam_veio(uvd, 0, 0x0000, 0x010c);


  ibmcam_veio(uvd, 0, 0x0006, 0x012c);

  ibmcam_model3_Packet1(uvd, 0x0046, 0x0000);

  ibmcam_veio(uvd, 1, 0x0000, 0x0116);
  ibmcam_veio(uvd, 0, 0x0064, 0x0116);
  ibmcam_veio(uvd, 1, 0x0000, 0x0115);
  ibmcam_veio(uvd, 0, 0x0003, 0x0115);
  ibmcam_veio(uvd, 0, 0x0008, 0x0123);
  ibmcam_veio(uvd, 0, 0x0000, 0x0117);
  ibmcam_veio(uvd, 0, 0x0000, 0x0112);
  ibmcam_veio(uvd, 0, 0x0080, 0x0100);
  IBMCAM_T(uvd)->initialized = 0;

  break;
 }
}
