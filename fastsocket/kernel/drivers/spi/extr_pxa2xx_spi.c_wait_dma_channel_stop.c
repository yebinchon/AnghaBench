
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DCSR (int) ;
 int DCSR_STOPSTATE ;
 int cpu_relax () ;
 int loops_per_jiffy ;

__attribute__((used)) static int wait_dma_channel_stop(int channel)
{
 unsigned long limit = loops_per_jiffy << 1;

 while (!(DCSR(channel) & DCSR_STOPSTATE) && --limit)
  cpu_relax();

 return limit;
}
