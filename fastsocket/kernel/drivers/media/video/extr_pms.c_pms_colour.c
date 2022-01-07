
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int decoder ;
 int pms_i2c_write (int,int,short) ;

__attribute__((used)) static void pms_colour(short colour)
{
 switch(decoder)
 {
  case 129:
   pms_i2c_write(0x8A, 0x00, colour);
   break;
  case 128:
   pms_i2c_write(0x42, 0x12, colour);
   break;
 }
}
