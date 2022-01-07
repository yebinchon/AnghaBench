
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvd {int videosize; } ;


 scalar_t__ CAMERA_IS_OPERATIONAL (struct uvd*) ;
 int EFAULT ;




 int ibmcam_veio (struct uvd*,int,int,int) ;

__attribute__((used)) static int ibmcam_model2_setup(struct uvd *uvd)
{
 ibmcam_veio(uvd, 0, 0x0000, 0x0100);
 ibmcam_veio(uvd, 1, 0x0000, 0x0116);
 ibmcam_veio(uvd, 0, 0x0060, 0x0116);
 ibmcam_veio(uvd, 0, 0x0002, 0x0112);
 ibmcam_veio(uvd, 0, 0x00bc, 0x012c);
 ibmcam_veio(uvd, 0, 0x0008, 0x012b);
 ibmcam_veio(uvd, 0, 0x0000, 0x0108);
 ibmcam_veio(uvd, 0, 0x0001, 0x0133);
 ibmcam_veio(uvd, 0, 0x0001, 0x0102);
 switch (uvd->videosize) {
 case 131:
  ibmcam_veio(uvd, 0, 0x002c, 0x0103);
  ibmcam_veio(uvd, 0, 0x0000, 0x0104);
  ibmcam_veio(uvd, 0, 0x0024, 0x0105);
  ibmcam_veio(uvd, 0, 0x00b9, 0x010a);
  ibmcam_veio(uvd, 0, 0x0038, 0x0119);
  ibmcam_veio(uvd, 0, 0x0003, 0x0106);
  ibmcam_veio(uvd, 0, 0x0090, 0x0107);
  break;
 case 130:
  ibmcam_veio(uvd, 0, 0x0028, 0x0103);
  ibmcam_veio(uvd, 0, 0x0000, 0x0104);
  ibmcam_veio(uvd, 0, 0x001e, 0x0105);
  ibmcam_veio(uvd, 0, 0x0039, 0x010a);
  ibmcam_veio(uvd, 0, 0x0070, 0x0119);
  ibmcam_veio(uvd, 0, 0x0003, 0x0106);
  ibmcam_veio(uvd, 0, 0x0098, 0x0107);
  break;
 case 129:
  ibmcam_veio(uvd, 0, 0x002c, 0x0103);
  ibmcam_veio(uvd, 0, 0x0000, 0x0104);
  ibmcam_veio(uvd, 0, 0x001e, 0x0105);
  ibmcam_veio(uvd, 0, 0x0039, 0x010a);
  ibmcam_veio(uvd, 0, 0x0070, 0x0119);
  ibmcam_veio(uvd, 0, 0x0003, 0x0106);
  ibmcam_veio(uvd, 0, 0x00da, 0x0107);
  break;
 case 128:
  ibmcam_veio(uvd, 0, 0x002c, 0x0103);
  ibmcam_veio(uvd, 0, 0x0000, 0x0104);
  ibmcam_veio(uvd, 0, 0x0024, 0x0105);
  ibmcam_veio(uvd, 0, 0x0039, 0x010a);
  ibmcam_veio(uvd, 0, 0x0070, 0x0119);
  ibmcam_veio(uvd, 0, 0x0003, 0x0106);
  ibmcam_veio(uvd, 0, 0x00fe, 0x0107);
  break;
 }
 return (CAMERA_IS_OPERATIONAL(uvd) ? 0 : -EFAULT);
}
