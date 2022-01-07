
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
typedef int u32 ;
struct sym_tcb {int dummy; } ;
struct TYPE_6__ {void* size; void* addr; } ;
struct sym_pmc {TYPE_3__ sg; void* ret; } ;
struct sym_hcb {int dummy; } ;
struct TYPE_5__ {TYPE_1__* data; struct sym_pmc pm1; struct sym_pmc pm0; } ;
struct sym_ccb {int host_flags; int goalp; TYPE_2__ phys; } ;
struct TYPE_4__ {int size; int addr; } ;


 int HF_ACT_PM ;
 int HF_DP_SAVED ;
 int HF_PRT ;
 int HF_SENSE ;
 int INB (struct sym_hcb*,int ) ;
 int OUTB (struct sym_hcb*,int ,int) ;
 int OUTL_DSP (struct sym_hcb*,int) ;
 int SCRIPTA_BA (struct sym_hcb*,int ) ;
 int SCRIPTB_BA (struct sym_hcb*,int ) ;
 int SYM_CONF_MAX_SG ;
 int clrack ;
 void* cpu_to_scr (int) ;
 int msg_bad ;
 int pm0_data ;
 int pm1_data ;
 int scr_to_cpu (int ) ;
 int sym_evaluate_dp (struct sym_hcb*,struct sym_ccb*,int,int*) ;
 int sym_get_script_dp (struct sym_hcb*,struct sym_ccb*) ;
 int sym_set_script_dp (struct sym_hcb*,struct sym_ccb*,int) ;

__attribute__((used)) static void sym_modify_dp(struct sym_hcb *np, struct sym_tcb *tp, struct sym_ccb *cp, int ofs)
{
 int dp_ofs = ofs;
 u32 dp_scr = sym_get_script_dp (np, cp);
 u32 dp_ret;
 u32 tmp;
 u_char hflags;
 int dp_sg;
 struct sym_pmc *pm;




 if (cp->host_flags & HF_SENSE)
  goto out_reject;





 dp_sg = sym_evaluate_dp(np, cp, dp_scr, &dp_ofs);
 if (dp_sg < 0)
  goto out_reject;





 dp_ret = cpu_to_scr(cp->goalp);
 dp_ret = dp_ret - 8 - (SYM_CONF_MAX_SG - dp_sg) * (2*4);





 if (dp_ofs == 0) {
  dp_scr = dp_ret;
  goto out_ok;
 }




 hflags = INB(np, HF_PRT);

 if (hflags & HF_DP_SAVED)
  hflags ^= HF_ACT_PM;

 if (!(hflags & HF_ACT_PM)) {
  pm = &cp->phys.pm0;
  dp_scr = SCRIPTA_BA(np, pm0_data);
 }
 else {
  pm = &cp->phys.pm1;
  dp_scr = SCRIPTA_BA(np, pm1_data);
 }

 hflags &= ~(HF_DP_SAVED);

 OUTB(np, HF_PRT, hflags);
 pm->ret = cpu_to_scr(dp_ret);
 tmp = scr_to_cpu(cp->phys.data[dp_sg-1].addr);
 tmp += scr_to_cpu(cp->phys.data[dp_sg-1].size) + dp_ofs;
 pm->sg.addr = cpu_to_scr(tmp);
 pm->sg.size = cpu_to_scr(-dp_ofs);

out_ok:
 sym_set_script_dp (np, cp, dp_scr);
 OUTL_DSP(np, SCRIPTA_BA(np, clrack));
 return;

out_reject:
 OUTL_DSP(np, SCRIPTB_BA(np, msg_bad));
}
