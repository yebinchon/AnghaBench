
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int* crc_table ;

__attribute__((used)) static void bcsp_crc_update(u16 *crc, u8 d)
{
 u16 reg = *crc;

 reg = (reg >> 4) ^ crc_table[(reg ^ d) & 0x000f];
 reg = (reg >> 4) ^ crc_table[(reg ^ (d >> 4)) & 0x000f];

 *crc = reg;
}
