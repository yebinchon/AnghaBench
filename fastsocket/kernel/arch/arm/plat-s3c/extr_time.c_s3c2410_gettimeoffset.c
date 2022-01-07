
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S3C2410_TCNTO (int) ;
 unsigned long __raw_readl (int ) ;
 scalar_t__ s3c24xx_ostimer_pending () ;
 unsigned long timer_startval ;
 unsigned long timer_ticks_to_usec (unsigned long) ;

__attribute__((used)) static unsigned long s3c2410_gettimeoffset (void)
{
 unsigned long tdone;
 unsigned long tval;



 tval = __raw_readl(S3C2410_TCNTO(4));
 tdone = timer_startval - tval;



 if (s3c24xx_ostimer_pending()) {





  tval = __raw_readl(S3C2410_TCNTO(4));
  tdone = timer_startval - tval;

  if (tval != 0)
   tdone += timer_startval;
 }

 return timer_ticks_to_usec(tdone);
}
