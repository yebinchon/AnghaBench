
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int videosize_t ;
typedef int tmp ;


 int VIDEOSIZE_X (int ) ;
 int VIDEOSIZE_Y (int ) ;
 int assert (int) ;
 int err (char*) ;
 int memmove (char*,char*,int) ;
 int sprintf (char*,char*,int ,int ) ;

__attribute__((used)) static void usbvideo_VideosizeToString(char *buf, int bufLen, videosize_t vs)
{
 char tmp[40];
 int n;

 n = 1 + sprintf(tmp, "%ldx%ld", VIDEOSIZE_X(vs), VIDEOSIZE_Y(vs));
 assert(n < sizeof(tmp));
 if ((buf == ((void*)0)) || (bufLen < n))
  err("usbvideo_VideosizeToString: buffer is too small.");
 else
  memmove(buf, tmp, n);
}
