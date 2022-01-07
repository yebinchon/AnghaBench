
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int crc32(unsigned char const *p, unsigned int len)
{
 int i;
 unsigned int crc = 0;
 while (len--) {
  crc ^= *p++;
  for (i = 0; i < 8; i++)
   crc = (crc >> 1) ^ ((crc & 1) ? 0xedb88320 : 0);
 }
 return crc;
}
