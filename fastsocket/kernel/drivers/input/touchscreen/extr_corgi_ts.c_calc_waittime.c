
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct corgi_ts {TYPE_1__* machinfo; } ;
struct TYPE_2__ {unsigned long (* get_hsync_invperiod ) () ;} ;


 int get_clk_frequency_khz (int ) ;
 unsigned long stub1 () ;

__attribute__((used)) static unsigned long calc_waittime(struct corgi_ts *corgi_ts)
{
 unsigned long hsync_invperiod = corgi_ts->machinfo->get_hsync_invperiod();

 if (hsync_invperiod)
  return get_clk_frequency_khz(0)*1000/hsync_invperiod;
 else
  return 0;
}
