
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ REG_RD (int ,int ,int ) ;
 int r_time ;
 int regi_timer0 ;
 int timer ;

void cris_delay10ns(u32 n10ns)
{
 u32 t0 = REG_RD(timer, regi_timer0, r_time);
 while (REG_RD(timer, regi_timer0, r_time) - t0 < n10ns)
  ;
}
