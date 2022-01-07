
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short* crc_flex_table ;

__attribute__((used)) static unsigned short calc_crc_flex(unsigned char *cp, int size)
{
 unsigned short crc = 0xffff;

 while (size--)
  crc = (crc << 8) ^ crc_flex_table[((crc >> 8) ^ *cp++) & 0xff];

 return crc;
}
