
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int cpu_to_be16 (int ) ;
 int crc_t10dif (int *,int) ;

uint16_t
lpfc_bg_crc(uint8_t *data, int count)
{
 uint16_t crc = 0;
 uint16_t x;

 crc = crc_t10dif(data, count);
 x = cpu_to_be16(crc);
 return x;
}
