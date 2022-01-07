
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PHILIPS1 ;
 scalar_t__ PHILIPS2 ;
 scalar_t__ decoder ;
 int pms_i2c_andor (int,int,int,short) ;

__attribute__((used)) static void pms_secamcross(short cross)
{
 if(decoder==PHILIPS2)
  pms_i2c_andor(0x8A, 0x0F, 0xDF, (cross&1)<<5);
 else if(decoder==PHILIPS1)
  pms_i2c_andor(0x42, 0x0F, 0xDF, (cross&1)<<5);
}
