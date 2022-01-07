
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SSYNC () ;
 int bfin_read_DMEM_CONTROL () ;
 int bfin_write_DMEM_CONTROL (int) ;

void blackfin_invalidate_entire_dcache(void)
{
 u32 dmem = bfin_read_DMEM_CONTROL();
 bfin_write_DMEM_CONTROL(dmem & ~0xc);
 SSYNC();
 bfin_write_DMEM_CONTROL(dmem);
 SSYNC();
}
