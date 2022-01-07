
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short crc16 (int ,unsigned char*,int) ;

__attribute__((used)) static int check_crc_16(unsigned char *cp, int size)
{
 unsigned short crc = 0x0000;

 if (size < 3)
  return -1;

 crc = crc16(0, cp, size);

 if (crc != 0x0000)
  return -1;

 return 0;
}
