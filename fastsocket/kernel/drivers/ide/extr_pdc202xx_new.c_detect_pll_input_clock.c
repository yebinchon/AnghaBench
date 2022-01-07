
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct timeval {int tv_sec; int tv_usec; } ;


 int DBG (char*,long,...) ;
 int do_gettimeofday (struct timeval*) ;
 int inb (unsigned long) ;
 int mdelay (int) ;
 int outb (int,unsigned long) ;
 long read_counter (unsigned long) ;

__attribute__((used)) static long detect_pll_input_clock(unsigned long dma_base)
{
 struct timeval start_time, end_time;
 long start_count, end_count;
 long pll_input, usec_elapsed;
 u8 scr1;

 start_count = read_counter(dma_base);
 do_gettimeofday(&start_time);


 outb(0x01, dma_base + 0x01);
 scr1 = inb(dma_base + 0x03);
 DBG("scr1[%02X]\n", scr1);
 outb(scr1 | 0x40, dma_base + 0x03);


 mdelay(10);

 end_count = read_counter(dma_base);
 do_gettimeofday(&end_time);


 outb(0x01, dma_base + 0x01);
 scr1 = inb(dma_base + 0x03);
 DBG("scr1[%02X]\n", scr1);
 outb(scr1 & ~0x40, dma_base + 0x03);





 usec_elapsed = (end_time.tv_sec - start_time.tv_sec) * 1000000 +
  (end_time.tv_usec - start_time.tv_usec);
 pll_input = ((start_count - end_count) & 0x3fffffff) / 10 *
  (10000000 / usec_elapsed);

 DBG("start[%ld] end[%ld]\n", start_count, end_count);

 return pll_input;
}
