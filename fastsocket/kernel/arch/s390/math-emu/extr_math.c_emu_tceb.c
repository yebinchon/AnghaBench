
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
typedef int __u32 ;
struct TYPE_6__ {TYPE_1__* fprs; } ;
struct TYPE_7__ {TYPE_2__ fp_regs; } ;
struct TYPE_8__ {TYPE_3__ thread; } ;
struct TYPE_5__ {int f; } ;


 int FP_DECL_S (int ) ;
 int FP_UNPACK_RAW_SP (int ,int *) ;
 int SA ;
 int SA_e ;
 int SA_s ;

 int _FP_FRAC_HIGH_RAW_S (int ) ;
 int _FP_FRAC_ZEROP_1 (int ) ;
 int _FP_QNANBIT_S ;
 TYPE_4__* current ;
 int emu_set_CC (struct pt_regs*,int) ;

__attribute__((used)) static int emu_tceb (struct pt_regs *regs, int rx, long val) {
        FP_DECL_S(SA);
 int bit;

        FP_UNPACK_RAW_SP(SA, &current->thread.fp_regs.fprs[rx].f);
 switch (SA_e) {
 default:
  bit = 8;
  break;
 case 0:
  if (_FP_FRAC_ZEROP_1(SA))
   bit = 10;
  else
   bit = 6;
  break;
 case 128:
  if (_FP_FRAC_ZEROP_1(SA))
   bit = 4;
  else if (_FP_FRAC_HIGH_RAW_S(SA) & _FP_QNANBIT_S)
   bit = 2;
  else
   bit = 0;
  break;
 }
 if (!SA_s)
  bit++;
 emu_set_CC(regs, ((__u32) val >> bit) & 1);
        return 0;
}
