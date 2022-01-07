
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int* crctab32 ;

__attribute__((used)) static u32 partial_crc32_one(u8 c, u32 crc)
{
 return crctab32[(crc ^ c) & 0xff] ^ (crc >> 8);
}
