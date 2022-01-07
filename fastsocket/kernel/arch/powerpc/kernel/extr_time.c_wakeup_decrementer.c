
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __get_cpu_var (int ) ;
 int last_jiffy ;
 int set_dec (unsigned long) ;
 unsigned long tb_ticks_per_jiffy ;
 unsigned long tb_ticks_since (int ) ;

void wakeup_decrementer(void)
{
 unsigned long ticks;





 ticks = tb_ticks_since(__get_cpu_var(last_jiffy));
 if (ticks < tb_ticks_per_jiffy)
  ticks = tb_ticks_per_jiffy - ticks;
 else
  ticks = 1;
 set_dec(ticks);
}
