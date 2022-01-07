
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int DUMP_MAX_PRESETS ;
 int __bnx2x_get_preset_regs (struct bnx2x*,int*,int) ;
 int __bnx2x_get_preset_regs_len (struct bnx2x*,int) ;

__attribute__((used)) static void __bnx2x_get_regs(struct bnx2x *bp, u32 *p)
{
 u32 preset_idx;


 for (preset_idx = 1; preset_idx <= DUMP_MAX_PRESETS; preset_idx++) {

  if ((preset_idx == 2) ||
      (preset_idx == 5) ||
      (preset_idx == 8) ||
      (preset_idx == 11))
   continue;
  __bnx2x_get_preset_regs(bp, p, preset_idx);
  p += __bnx2x_get_preset_regs_len(bp, preset_idx);
 }
}
