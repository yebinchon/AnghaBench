
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvd {int dummy; } ;


 int ibmcam_veio (struct uvd*,int ,int,int) ;

__attribute__((used)) static void ibmcam_model4_BrightnessPacket(struct uvd *uvd, int i)
{
 ibmcam_veio(uvd, 0, 0x00aa, 0x012d);
 ibmcam_veio(uvd, 0, 0x0026, 0x012f);
 ibmcam_veio(uvd, 0, 0xd141, 0x0124);
 ibmcam_veio(uvd, 0, i, 0x0127);
 ibmcam_veio(uvd, 0, 0x00aa, 0x0130);
 ibmcam_veio(uvd, 0, 0x82a8, 0x0124);
 ibmcam_veio(uvd, 0, 0x0038, 0x012d);
 ibmcam_veio(uvd, 0, 0x0004, 0x012f);
 ibmcam_veio(uvd, 0, 0xd145, 0x0124);
 ibmcam_veio(uvd, 0, 0xfffa, 0x0124);
}
