
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvd {int dummy; } ;


 int ibmcam_send_x_00_05 (struct uvd*,unsigned char) ;
 int ibmcam_send_x_00_05_02 (struct uvd*,unsigned char) ;
 int ibmcam_send_x_01_00_05 (struct uvd*,int ) ;
 int unknown_88 ;

__attribute__((used)) static void ibmcam_PacketFormat2(struct uvd *uvd, unsigned char fkey, unsigned char val)
{
 ibmcam_send_x_01_00_05 (uvd, unknown_88);
 ibmcam_send_x_00_05 (uvd, fkey);
 ibmcam_send_x_00_05_02 (uvd, val);
}
