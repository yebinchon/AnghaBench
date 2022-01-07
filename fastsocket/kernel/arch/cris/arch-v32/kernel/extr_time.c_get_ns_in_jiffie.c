
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int reg_timer_r_tmr0_data ;


 int REG_RD (int ,int ,int ) ;
 int TIMER0_DIV ;
 int r_tmr0_data ;
 int regi_timer0 ;
 int timer ;

unsigned long get_ns_in_jiffie(void)
{
 reg_timer_r_tmr0_data data;
 unsigned long ns;

 data = REG_RD(timer, regi_timer0, r_tmr0_data);
 ns = (TIMER0_DIV - data) * 10;
 return ns;
}
