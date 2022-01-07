
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ETIMEDOUT ;
 int TXDUMMY ;
 int jornada_ssp_byte (int) ;

int jornada_ssp_inout(u8 byte)
{
 int ret, i;


 if (byte != TXDUMMY) {
  ret = jornada_ssp_byte(byte);

  if (ret != TXDUMMY) {
   for (i = 0; i < 256; i++)
    if (jornada_ssp_byte(TXDUMMY) == -1)
     break;
   return -ETIMEDOUT;
  }
 } else
  ret = jornada_ssp_byte(TXDUMMY);

 return ret;
}
