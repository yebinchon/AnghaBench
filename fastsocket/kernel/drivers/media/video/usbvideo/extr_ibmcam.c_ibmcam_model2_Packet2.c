
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvd {int dummy; } ;


 int ibmcam_veio (struct uvd*,int ,int,int) ;

__attribute__((used)) static void ibmcam_model2_Packet2(struct uvd *uvd)
{
 ibmcam_veio(uvd, 0, 0x00ff, 0x012d);
 ibmcam_veio(uvd, 0, 0xfea3, 0x0124);
}
