
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GPMC_CHUNK_SHIFT ;
 int GPMC_CS_CONFIG7 ;
 int GPMC_SECTION_SHIFT ;
 int gpmc_cs_read_reg (int,int ) ;
 int gpmc_cs_write_reg (int,int ,int) ;

__attribute__((used)) static void gpmc_cs_enable_mem(int cs, u32 base, u32 size)
{
 u32 l;
 u32 mask;

 mask = (1 << GPMC_SECTION_SHIFT) - size;
 l = gpmc_cs_read_reg(cs, GPMC_CS_CONFIG7);
 l &= ~0x3f;
 l = (base >> GPMC_CHUNK_SHIFT) & 0x3f;
 l &= ~(0x0f << 8);
 l |= ((mask >> GPMC_CHUNK_SHIFT) & 0x0f) << 8;
 l |= 1 << 6;
 gpmc_cs_write_reg(cs, GPMC_CS_CONFIG7, l);
}
