
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvd {int dummy; } ;


 int ibmcam_veio (struct uvd*,int ,int,int) ;

__attribute__((used)) static void ibmcam_model3_Packet1(struct uvd *uvd, unsigned short v1, unsigned short v2)
{
 ibmcam_veio(uvd, 0, 0x0078, 0x012d);
 ibmcam_veio(uvd, 0, v1, 0x012f);
 ibmcam_veio(uvd, 0, 0xd141, 0x0124);
 ibmcam_veio(uvd, 0, v2, 0x0127);
 ibmcam_veio(uvd, 0, 0xfea8, 0x0124);
}
