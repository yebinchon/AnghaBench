
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sdram_params {int refresh; int rows; } ;


 int mdelay (int) ;
 int ns_to_cycles (int,int) ;
 int printk (char*,int) ;
 int sdram_set_refresh (int) ;

__attribute__((used)) static void
sdram_update_refresh(u_int cpu_khz, struct sdram_params *sdram)
{
 u_int ns_row = (sdram->refresh * 1000) >> sdram->rows;
 u_int dri = ns_to_cycles(ns_row, cpu_khz / 2) / 32;






 sdram_set_refresh(dri);
}
