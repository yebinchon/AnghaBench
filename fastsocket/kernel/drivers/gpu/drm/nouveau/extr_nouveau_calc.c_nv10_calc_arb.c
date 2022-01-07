
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv_sim_state {int pclk_khz; int nvclk_khz; int mclk_khz; int memory_width; int bpp; scalar_t__ memory_type; int mem_page_miss; scalar_t__ two_heads; } ;
struct nv_fifo_info {int burst; int lwm; } ;


 void* min (int,int) ;
 int rounddown_pow_of_two (int) ;

__attribute__((used)) static void
nv10_calc_arb(struct nv_fifo_info *fifo, struct nv_sim_state *arb)
{
 int fill_rate, drain_rate;
 int pclks, nvclks, mclks, xclks;
 int pclk_freq, nvclk_freq, mclk_freq;
 int fill_lat, extra_lat;
 int max_burst_o, max_burst_l;
 int fifo_len, min_lwm, max_lwm;
 const int burst_lat = 80;


 pclk_freq = arb->pclk_khz;
 nvclk_freq = arb->nvclk_khz;
 mclk_freq = arb->mclk_khz;

 fill_rate = mclk_freq * arb->memory_width / 8;
 drain_rate = pclk_freq * arb->bpp / 8;

 fifo_len = arb->two_heads ? 1536 : 1024;



 pclks = 4;

 nvclks = 3
  + 2
  + 1

  + 1
  + 1
  + 1;

 mclks = 1

  + 1
  + 5
  + 2
  + 2
  + 7;


 mclks += (arb->memory_type == 0 ? 2 : 1)
  * arb->memory_width / 32;

 fill_lat = mclks * 1000 * 1000 / mclk_freq
  + nvclks * 1000 * 1000 / nvclk_freq
  + pclks * 1000 * 1000 / pclk_freq;



 xclks = 2 * arb->mem_page_miss + mclks

  + 2 * arb->mem_page_miss
  + (arb->bpp == 32 ? 8 : 4);

 extra_lat = xclks * 1000 * 1000 / mclk_freq;

 if (arb->two_heads)

  extra_lat += fill_lat + extra_lat + burst_lat;




 max_burst_o = (1 + fifo_len - extra_lat * drain_rate / (1000 * 1000))
  * (fill_rate / 1000) / ((fill_rate - drain_rate) / 1000);
 fifo->burst = min(max_burst_o, 1024);


 max_burst_l = burst_lat * fill_rate / (1000 * 1000);
 fifo->burst = min(max_burst_l, fifo->burst);

 fifo->burst = rounddown_pow_of_two(fifo->burst);



 min_lwm = (fill_lat + extra_lat) * drain_rate / (1000 * 1000) + 1;
 max_lwm = fifo_len - fifo->burst
  + fill_lat * drain_rate / (1000 * 1000)
  + fifo->burst * drain_rate / fill_rate;

 fifo->lwm = min_lwm + 10 * (max_lwm - min_lwm) / 100;
}
