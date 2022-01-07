
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SSYNC () ;
 int bfin_read_IMEM_CONTROL () ;
 int bfin_write_IMEM_CONTROL (int) ;

void blackfin_invalidate_entire_icache(void)
{
 u32 imem = bfin_read_IMEM_CONTROL();
 bfin_write_IMEM_CONTROL(imem & ~0x4);
 SSYNC();
 bfin_write_IMEM_CONTROL(imem);
 SSYNC();
}
