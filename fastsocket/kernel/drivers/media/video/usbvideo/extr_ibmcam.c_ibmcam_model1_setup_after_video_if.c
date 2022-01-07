
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvd {int dummy; } ;


 unsigned short FRAMERATE_MAX ;
 int FRAMERATE_MIN ;
 int RESTRICT_TO_RANGE (unsigned short,int ,unsigned short) ;
 unsigned short framerate ;
 int ibmcam_veio (struct uvd*,int ,int,int) ;

__attribute__((used)) static void ibmcam_model1_setup_after_video_if(struct uvd *uvd)
{
 unsigned short internal_frame_rate;

 RESTRICT_TO_RANGE(framerate, FRAMERATE_MIN, FRAMERATE_MAX);
 internal_frame_rate = FRAMERATE_MAX - framerate;
 ibmcam_veio(uvd, 0, 0x01, 0x0100);
 ibmcam_veio(uvd, 0, internal_frame_rate, 0x0111);
 ibmcam_veio(uvd, 0, 0x01, 0x0114);
 ibmcam_veio(uvd, 0, 0xc0, 0x010c);
}
