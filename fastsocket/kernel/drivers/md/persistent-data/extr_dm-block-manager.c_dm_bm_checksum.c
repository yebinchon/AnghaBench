
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int crc32c (int,void const*,size_t) ;

u32 dm_bm_checksum(const void *data, size_t len, u32 init_xor)
{
 return crc32c(~(u32) 0, data, len) ^ init_xor;
}
