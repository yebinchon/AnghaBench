
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 unsigned long calculate_pclock (int ) ;
 int calculate_tclock (int ,unsigned long,int ) ;
 int calculate_vtclock (int ,unsigned long) ;
 int read_clkspeed () ;
 int vr41xx_tclock ;
 int vr41xx_vtclock ;

void vr41xx_calculate_clock_frequency(void)
{
 unsigned long pclock;
 uint16_t clkspeed;

 clkspeed = read_clkspeed();

 pclock = calculate_pclock(clkspeed);
 vr41xx_vtclock = calculate_vtclock(clkspeed, pclock);
 vr41xx_tclock = calculate_tclock(clkspeed, pclock, vr41xx_vtclock);
}
