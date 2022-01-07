
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crc8_byte (unsigned int*,unsigned long) ;

__attribute__((used)) static unsigned int crc8_addr(unsigned long addr)
{
 int i;
 unsigned int crc = 0x00;

 for(i=0;i<8;i++)
  crc8_byte(&crc, addr>>(i<<3));
 return crc;
}
