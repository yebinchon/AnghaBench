
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ LOAD_FREQ ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spu_calc_load () ;
 int spuloadavg_timer ;

__attribute__((used)) static void spuloadavg_wake(unsigned long data)
{
 mod_timer(&spuloadavg_timer, jiffies + LOAD_FREQ);
 spu_calc_load();
}
