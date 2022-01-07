
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int VIDIOC_CROPCAP ;

 unsigned int VIDIOC_G_AUDIO ;

 unsigned int VIDIOC_G_AUDOUT ;

 unsigned int VIDIOC_OVERLAY ;

 unsigned int VIDIOC_S_CTRL ;

 unsigned int VIDIOC_S_PARM ;


__attribute__((used)) static unsigned int
video_fix_command(unsigned int cmd)
{
 switch (cmd) {
 case 130:
  cmd = VIDIOC_OVERLAY;
  break;
 case 128:
  cmd = VIDIOC_S_PARM;
  break;
 case 129:
  cmd = VIDIOC_S_CTRL;
  break;
 case 132:
  cmd = VIDIOC_G_AUDIO;
  break;
 case 131:
  cmd = VIDIOC_G_AUDOUT;
  break;
 case 133:
  cmd = VIDIOC_CROPCAP;
  break;
 }
 return cmd;
}
