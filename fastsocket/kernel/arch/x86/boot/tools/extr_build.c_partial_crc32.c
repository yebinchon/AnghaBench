
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int partial_crc32_one (int ,int ) ;

__attribute__((used)) static u32 partial_crc32(const u8 *s, int len, u32 crc)
{
 while (len--)
  crc = partial_crc32_one(*s++, crc);
 return crc;
}
