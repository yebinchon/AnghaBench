
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int dummy; } ;


 int w9968cf_read_sb (struct sd*) ;
 int w9968cf_write_sb (struct sd*,int) ;

__attribute__((used)) static void w9968cf_smbus_read_byte(struct sd *sd, u8 *v)
{
 u8 bit;



 *v = 0;
 for (bit = 0 ; bit < 8 ; bit++) {
  *v <<= 1;

  w9968cf_write_sb(sd, 0x0013);
  *v |= (w9968cf_read_sb(sd) & 0x0008) ? 1 : 0;

  w9968cf_write_sb(sd, 0x0012);
 }
}
