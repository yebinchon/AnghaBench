
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int size; } ;
struct sym_pmc {TYPE_1__ sg; int ret; } ;
struct sym_hcb {int dummy; } ;
struct TYPE_6__ {TYPE_2__* data; struct sym_pmc pm1; struct sym_pmc pm0; } ;
struct sym_ccb {int host_flags; int segments; int ext_sg; int ext_ofs; TYPE_3__ phys; int goalp; } ;
struct TYPE_5__ {int size; } ;


 int HF_SENSE ;
 int SCRIPTA_BA (struct sym_hcb*,int ) ;
 int SYM_CONF_MAX_SG ;
 int pm0_data ;
 int pm1_data ;
 int scr_to_cpu (int ) ;

__attribute__((used)) static int sym_evaluate_dp(struct sym_hcb *np, struct sym_ccb *cp, u32 scr, int *ofs)
{
 u32 dp_scr;
 int dp_ofs, dp_sg, dp_sgmin;
 int tmp;
 struct sym_pmc *pm;





 dp_scr = scr;
 dp_ofs = *ofs;
 if (dp_scr == SCRIPTA_BA(np, pm0_data))
  pm = &cp->phys.pm0;
 else if (dp_scr == SCRIPTA_BA(np, pm1_data))
  pm = &cp->phys.pm1;
 else
  pm = ((void*)0);

 if (pm) {
  dp_scr = scr_to_cpu(pm->ret);
  dp_ofs -= scr_to_cpu(pm->sg.size) & 0x00ffffff;
 }




 if (cp->host_flags & HF_SENSE) {
  *ofs = dp_ofs;
  return 0;
 }







 tmp = scr_to_cpu(cp->goalp);
 dp_sg = SYM_CONF_MAX_SG;
 if (dp_scr != tmp)
  dp_sg -= (tmp - 8 - (int)dp_scr) / (2*4);
 dp_sgmin = SYM_CONF_MAX_SG - cp->segments;
 if (dp_ofs < 0) {
  int n;
  while (dp_sg > dp_sgmin) {
   --dp_sg;
   tmp = scr_to_cpu(cp->phys.data[dp_sg].size);
   n = dp_ofs + (tmp & 0xffffff);
   if (n > 0) {
    ++dp_sg;
    break;
   }
   dp_ofs = n;
  }
 }
 else if (dp_ofs > 0) {
  while (dp_sg < SYM_CONF_MAX_SG) {
   tmp = scr_to_cpu(cp->phys.data[dp_sg].size);
   dp_ofs -= (tmp & 0xffffff);
   ++dp_sg;
   if (dp_ofs <= 0)
    break;
  }
 }





 if (dp_sg < dp_sgmin || (dp_sg == dp_sgmin && dp_ofs < 0))
  goto out_err;
 else if (dp_sg > SYM_CONF_MAX_SG ||
   (dp_sg == SYM_CONF_MAX_SG && dp_ofs > 0))
  goto out_err;




 if (dp_sg > cp->ext_sg ||
            (dp_sg == cp->ext_sg && dp_ofs > cp->ext_ofs)) {
  cp->ext_sg = dp_sg;
  cp->ext_ofs = dp_ofs;
 }




 *ofs = dp_ofs;
 return dp_sg;

out_err:
 return -1;
}
