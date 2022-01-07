
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int SAMPLE_AT_RESET_LOW ;
 int readl (int ) ;

__attribute__((used)) static void get_pclk_l2clk(int hclk, int core_index, int *pclk, int *l2clk)
{
 u32 cfg;





 if (core_index == 0) {
  cfg = (readl(SAMPLE_AT_RESET_LOW) >> 8) & 0x3f;
 } else {
  cfg = (readl(SAMPLE_AT_RESET_LOW) >> 14) & 0x3f;
 }





 *pclk = ((u64)hclk * (2 + (cfg & 0xf))) >> 1;





 *l2clk = *pclk / (((cfg >> 4) & 3) + 1);
}
