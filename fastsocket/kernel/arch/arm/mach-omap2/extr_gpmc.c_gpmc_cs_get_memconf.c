
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GPMC_CHUNK_SHIFT ;
 int GPMC_CS_CONFIG7 ;
 int GPMC_SECTION_SHIFT ;
 int gpmc_cs_read_reg (int,int ) ;

__attribute__((used)) static void gpmc_cs_get_memconf(int cs, u32 *base, u32 *size)
{
 u32 l;
 u32 mask;

 l = gpmc_cs_read_reg(cs, GPMC_CS_CONFIG7);
 *base = (l & 0x3f) << GPMC_CHUNK_SHIFT;
 mask = (l >> 8) & 0x0f;
 *size = (1 << GPMC_SECTION_SHIFT) - (mask << GPMC_CHUNK_SHIFT);
}
