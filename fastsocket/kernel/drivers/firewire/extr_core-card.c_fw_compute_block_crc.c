
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int __be32 ;


 int cpu_to_be32 (int) ;
 int crc_itu_t (int ,int *,int) ;

int fw_compute_block_crc(u32 *block)
{
 __be32 be32_block[256];
 int i, length;

 length = (*block >> 16) & 0xff;
 for (i = 0; i < length; i++)
  be32_block[i] = cpu_to_be32(block[i + 1]);
 *block |= crc_itu_t(0, (u8 *) be32_block, length * 4);

 return length;
}
