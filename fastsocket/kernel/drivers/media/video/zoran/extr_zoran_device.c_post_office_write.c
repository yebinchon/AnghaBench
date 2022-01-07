
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct zoran {int dummy; } ;


 int ZR36057_POR ;
 unsigned int ZR36057_POR_PODir ;
 unsigned int ZR36057_POR_POTime ;
 int btwrite (unsigned int,int ) ;
 int post_office_wait (struct zoran*) ;

int
post_office_write (struct zoran *zr,
     unsigned int guest,
     unsigned int reg,
     unsigned int value)
{
 u32 por;

 por =
     ZR36057_POR_PODir | ZR36057_POR_POTime | ((guest & 7) << 20) |
     ((reg & 7) << 16) | (value & 0xFF);
 btwrite(por, ZR36057_POR);

 return post_office_wait(zr);
}
