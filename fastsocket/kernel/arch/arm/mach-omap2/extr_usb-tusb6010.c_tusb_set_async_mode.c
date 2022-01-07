
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
struct gpmc_timings {int cs_on; int adv_on; int adv_rd_off; int oe_on; int access; int oe_off; int cs_rd_off; int adv_wr_off; int we_on; int we_off; int cs_wr_off; void* wr_cycle; void* rd_cycle; } ;


 int async_cs ;
 int gpmc_cs_set_timings (int ,struct gpmc_timings*) ;
 int memset (struct gpmc_timings*,int ,int) ;
 void* next_clk (int,unsigned int,unsigned int) ;

__attribute__((used)) static int tusb_set_async_mode(unsigned sysclk_ps, unsigned fclk_ps)
{
 struct gpmc_timings t;
 unsigned t_acsnh_advnh = sysclk_ps + 3000;
 unsigned tmp;

 memset(&t, 0, sizeof(t));


 t.cs_on = 8;

 t.adv_on = next_clk(t.cs_on, t_acsnh_advnh - 7000, fclk_ps);






 t.adv_rd_off = next_clk(t.adv_on, t_acsnh_advnh, fclk_ps);


 t.oe_on = next_clk(t.adv_on, t_acsnh_advnh + 1000, fclk_ps);


 tmp = t.oe_on * 1000 + 300;
 t.access = next_clk(t.oe_on, tmp, fclk_ps);


 tmp = t.access * 1000;
 t.oe_off = next_clk(t.access, tmp, fclk_ps);

 t.cs_rd_off = t.oe_off;

 tmp = t.cs_rd_off * 1000 + 7000 ;
 t.rd_cycle = next_clk(t.cs_rd_off, tmp, fclk_ps);






 t.adv_wr_off = t.adv_rd_off;


 t.we_on = next_clk(t.adv_wr_off, t_acsnh_advnh + 1000, fclk_ps);


 tmp = t.we_on * 1000 + 300;
 t.we_off = next_clk(t.we_on, tmp, fclk_ps);

 t.cs_wr_off = t.we_off;

 tmp = t.cs_wr_off * 1000 + 7000 ;
 t.wr_cycle = next_clk(t.cs_wr_off, tmp, fclk_ps);

 return gpmc_cs_set_timings(async_cs, &t);
}
