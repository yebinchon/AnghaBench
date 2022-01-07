
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int videosize_t ;


 int RESTRICT_TO_RANGE (int,int ,scalar_t__) ;







 scalar_t__ SIZE_LastItem ;
 int VIDEOSIZE_128x96 ;
 int VIDEOSIZE_160x120 ;
 int VIDEOSIZE_176x144 ;
 int VIDEOSIZE_320x240 ;
 int VIDEOSIZE_352x240 ;
 int VIDEOSIZE_352x288 ;
 int VIDEOSIZE_640x480 ;
 int err (char*,int) ;

__attribute__((used)) static videosize_t ibmcam_size_to_videosize(int size)
{
 videosize_t vs = VIDEOSIZE_352x288;
 RESTRICT_TO_RANGE(size, 0, (SIZE_LastItem-1));
 switch (size) {
 case 134:
  vs = VIDEOSIZE_128x96;
  break;
 case 133:
  vs = VIDEOSIZE_160x120;
  break;
 case 132:
  vs = VIDEOSIZE_176x144;
  break;
 case 131:
  vs = VIDEOSIZE_320x240;
  break;
 case 130:
  vs = VIDEOSIZE_352x240;
  break;
 case 129:
  vs = VIDEOSIZE_352x288;
  break;
 case 128:
  vs = VIDEOSIZE_640x480;
  break;
 default:
  err("size=%d. is not valid", size);
  break;
 }
 return vs;
}
