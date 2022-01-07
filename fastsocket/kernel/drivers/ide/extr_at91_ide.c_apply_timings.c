
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ide_timing {unsigned int cyc8b; unsigned int setup; unsigned int act8b; } ;
struct clk {int dummy; } ;


 int BUG_ON (int ) ;
 int IS_ERR (struct clk*) ;
 unsigned int calc_mck_cycles (unsigned int,unsigned int) ;
 struct clk* clk_get (int *,char*) ;
 unsigned int clk_get_rate (struct clk*) ;
 int pdbg (char*,unsigned int,...) ;
 int set_smc_timings (int const,unsigned int,unsigned int,unsigned int,unsigned int,int) ;

__attribute__((used)) static void apply_timings(const u8 chipselect, const u8 pio,
     const struct ide_timing *timing, int use_iordy)
{
 unsigned int t0, t1, t2, t6z;
 unsigned int cycle, setup, pulse, data_float;
 unsigned int mck_hz;
 struct clk *mck;




 t0 = timing->cyc8b;
 t1 = timing->setup;
 t2 = timing->act8b;
 t6z = (pio < 5) ? 30 : 20;

 pdbg("t0=%u t1=%u t2=%u t6z=%u\n", t0, t1, t2, t6z);

 mck = clk_get(((void*)0), "mck");
 BUG_ON(IS_ERR(mck));
 mck_hz = clk_get_rate(mck);
 pdbg("mck_hz=%u\n", mck_hz);

 cycle = calc_mck_cycles(t0, mck_hz);
 setup = calc_mck_cycles(t1, mck_hz);
 pulse = calc_mck_cycles(t2, mck_hz);
 data_float = calc_mck_cycles(t6z, mck_hz);

 pdbg("cycle=%u setup=%u pulse=%u data_float=%u\n",
      cycle, setup, pulse, data_float);

 set_smc_timings(chipselect, cycle, setup, pulse, data_float, use_iordy);
}
