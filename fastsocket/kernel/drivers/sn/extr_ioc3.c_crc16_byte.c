
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void crc16_byte(unsigned int *crc, unsigned char db)
{
 int i;

 for(i=0;i<8;i++) {
  *crc <<= 1;
  if((db^(*crc>>16)) & 1)
   *crc ^= 0x8005;
  db >>= 1;
 }
 *crc &= 0xFFFF;
}
