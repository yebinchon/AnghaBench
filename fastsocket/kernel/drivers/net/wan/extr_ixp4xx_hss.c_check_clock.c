
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int abs (int) ;
 int do_div (int,int) ;
 int ixp4xx_timer_freq ;

__attribute__((used)) static u32 check_clock(u32 rate, u32 a, u32 b, u32 c,
         u32 *best, u32 *best_diff, u32 *reg)
{

 u64 new_rate;
 u32 new_diff;

 new_rate = ixp4xx_timer_freq * (u64)(c + 1);
 do_div(new_rate, a * (c + 1) + b + 1);
 new_diff = abs((u32)new_rate - rate);

 if (new_diff < *best_diff) {
  *best = new_rate;
  *best_diff = new_diff;
  *reg = (a << 22) | (b << 12) | c;
 }
 return new_diff;
}
