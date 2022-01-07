
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef enum ps3av_mode_num { ____Placeholder_ps3av_mode_num } ps3av_mode_num ;
struct TYPE_3__ {int mask; int id; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int BUILD_BUG_ON (int) ;
 int PS3AV_RES_MASK_50 ;
 int PS3AV_RES_MASK_60 ;
 int PS3AV_RES_MASK_VESA ;
 int SHIFT_50 ;
 int SHIFT_60 ;
 int SHIFT_VESA ;
 TYPE_1__* ps3av_preferred_modes ;

__attribute__((used)) static enum ps3av_mode_num ps3av_resbit2id(u32 res_50, u32 res_60,
        u32 res_vesa)
{
 unsigned int i;
 u32 res_all;





 BUILD_BUG_ON(PS3AV_RES_MASK_50 << SHIFT_50 &
       PS3AV_RES_MASK_60 << SHIFT_60);
 BUILD_BUG_ON(PS3AV_RES_MASK_50 << SHIFT_50 &
       PS3AV_RES_MASK_VESA << SHIFT_VESA);
 BUILD_BUG_ON(PS3AV_RES_MASK_60 << SHIFT_60 &
       PS3AV_RES_MASK_VESA << SHIFT_VESA);
 res_all = (res_50 & PS3AV_RES_MASK_50) << SHIFT_50 |
    (res_60 & PS3AV_RES_MASK_60) << SHIFT_60 |
    (res_vesa & PS3AV_RES_MASK_VESA) << SHIFT_VESA;

 if (!res_all)
  return 0;

 for (i = 0; i < ARRAY_SIZE(ps3av_preferred_modes); i++)
  if (res_all & ps3av_preferred_modes[i].mask)
   return ps3av_preferred_modes[i].id;

 return 0;
}
