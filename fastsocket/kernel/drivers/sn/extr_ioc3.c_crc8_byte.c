
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void crc8_byte(unsigned int *crc, unsigned char db)
{
 int i,f;

 for(i=0;i<8;i++) {
  f = (*crc ^ db) & 1;
  *crc >>= 1;
  db >>= 1;
  if(f)
   *crc ^= 0x8c;
 }
 *crc &= 0xff;
}
