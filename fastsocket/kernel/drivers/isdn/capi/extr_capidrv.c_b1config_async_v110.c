
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef unsigned char* _cstruct ;



__attribute__((used)) static _cstruct b1config_async_v110(u16 rate)
{

 static unsigned char buf[9];
 buf[0] = 8;

 buf[1] = rate & 0xff; buf[2] = (rate >> 8) & 0xff;
 buf[3] = 8; buf[4] = 0;
 buf[5] = 0; buf[6] = 0;
 buf[7] = 0; buf[8] = 0;
 return buf;
}
