
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int dummy; } ;


 int w9968cf_write_sb (struct sd*,int) ;

__attribute__((used)) static void w9968cf_smbus_write_byte(struct sd *sd, u8 v)
{
 u8 bit;
 int sda;

 for (bit = 0 ; bit < 8 ; bit++) {
  sda = (v & 0x80) ? 2 : 0;
  v <<= 1;

  w9968cf_write_sb(sd, 0x10 | sda);

  w9968cf_write_sb(sd, 0x11 | sda);

  w9968cf_write_sb(sd, 0x10 | sda);
 }
}
