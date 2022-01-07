
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvd {int dummy; } ;


 int ibmcam_veio (struct uvd*,int ,int,int) ;

__attribute__((used)) static void ibmcam_send_x_00_05_02_08_01(struct uvd *uvd, unsigned short x)
{
 ibmcam_veio(uvd, 0, x, 0x0127);
 ibmcam_veio(uvd, 0, 0x0000, 0x0124);
 ibmcam_veio(uvd, 0, 0x0005, 0x0124);
 ibmcam_veio(uvd, 0, 0x0002, 0x0124);
 ibmcam_veio(uvd, 0, 0x0008, 0x0124);
 ibmcam_veio(uvd, 0, 0x0001, 0x0124);
}
