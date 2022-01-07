
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int line_speed; } ;
struct bnx2x {int * mf_config; TYPE_1__ link_vars; } ;


 size_t BP_VN (struct bnx2x*) ;
 scalar_t__ IS_MF (struct bnx2x*) ;
 scalar_t__ IS_MF_SI (struct bnx2x*) ;
 int bnx2x_extract_max_cfg (struct bnx2x*,int ) ;

u16 bnx2x_get_mf_speed(struct bnx2x *bp)
{
 u16 line_speed = bp->link_vars.line_speed;
 if (IS_MF(bp)) {
  u16 maxCfg = bnx2x_extract_max_cfg(bp,
         bp->mf_config[BP_VN(bp)]);




  if (IS_MF_SI(bp))
   line_speed = (line_speed * maxCfg) / 100;
  else {
   u16 vn_max_rate = maxCfg * 100;

   if (vn_max_rate < line_speed)
    line_speed = vn_max_rate;
  }
 }

 return line_speed;
}
