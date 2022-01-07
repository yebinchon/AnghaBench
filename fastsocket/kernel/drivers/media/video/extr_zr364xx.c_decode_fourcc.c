
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;



__attribute__((used)) static char *decode_fourcc(__u32 pixelformat, char *buf)
{
 buf[0] = pixelformat & 0xff;
 buf[1] = (pixelformat >> 8) & 0xff;
 buf[2] = (pixelformat >> 16) & 0xff;
 buf[3] = (pixelformat >> 24) & 0xff;
 buf[4] = '\0';
 return buf;
}
