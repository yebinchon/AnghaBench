
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int* crc32c_table ;

__attribute__((used)) static u32 crc32c(u32 crc, const u8 *data, unsigned int length)
{
 while (length--)
  crc = crc32c_table[(crc ^ *data++) & 0xFFL] ^ (crc >> 8);

 return crc;
}
