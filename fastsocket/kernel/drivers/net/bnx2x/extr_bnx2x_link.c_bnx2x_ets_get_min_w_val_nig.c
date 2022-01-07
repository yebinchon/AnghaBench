
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct link_vars {scalar_t__ line_speed; scalar_t__ link_up; } ;


 int ETS_E3B0_NIG_MIN_W_VAL_20GBPS ;
 int ETS_E3B0_NIG_MIN_W_VAL_UP_TO_10GBPS ;
 scalar_t__ SPEED_20000 ;

__attribute__((used)) static u32 bnx2x_ets_get_min_w_val_nig(const struct link_vars *vars)
{
 u32 min_w_val = 0;

 if (vars->link_up) {
  if (vars->line_speed == SPEED_20000)
   min_w_val = ETS_E3B0_NIG_MIN_W_VAL_20GBPS;
  else
   min_w_val = ETS_E3B0_NIG_MIN_W_VAL_UP_TO_10GBPS;
 } else
  min_w_val = ETS_E3B0_NIG_MIN_W_VAL_20GBPS;



 return min_w_val;
}
