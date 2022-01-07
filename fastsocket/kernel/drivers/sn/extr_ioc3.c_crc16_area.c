
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crc16_byte (unsigned int*,int ) ;

__attribute__((used)) static unsigned int crc16_area(unsigned char *dbs, int size, unsigned int crc)
{
 while(size--)
  crc16_byte(&crc, *(dbs++));
 return crc;
}
