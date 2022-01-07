
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int min_cfg; int num_rspq_elems; int num_reqq_elems; int num_sgpgs; } ;
struct TYPE_4__ {scalar_t__ num_fwtio_reqs; int num_rports; int num_uf_bufs; int num_fcxp_reqs; int num_tskim_reqs; int num_ioim_reqs; } ;
struct bfa_iocfc_cfg_s {TYPE_1__ drvcfg; TYPE_2__ fwcfg; } ;


 int BFA_FCXP_MIN ;
 int BFA_IOIM_MIN ;
 int BFA_REQQ_NELEMS_MIN ;
 int BFA_RPORT_MIN ;
 int BFA_RSPQ_NELEMS_MIN ;
 int BFA_SGPG_MIN ;
 int BFA_TRUE ;
 int BFA_TSKIM_MIN ;
 int BFA_UF_MIN ;
 int bfa_cfg_get_default (struct bfa_iocfc_cfg_s*) ;

void
bfa_cfg_get_min(struct bfa_iocfc_cfg_s *cfg)
{
 bfa_cfg_get_default(cfg);
 cfg->fwcfg.num_ioim_reqs = BFA_IOIM_MIN;
 cfg->fwcfg.num_tskim_reqs = BFA_TSKIM_MIN;
 cfg->fwcfg.num_fcxp_reqs = BFA_FCXP_MIN;
 cfg->fwcfg.num_uf_bufs = BFA_UF_MIN;
 cfg->fwcfg.num_rports = BFA_RPORT_MIN;
 cfg->fwcfg.num_fwtio_reqs = 0;

 cfg->drvcfg.num_sgpgs = BFA_SGPG_MIN;
 cfg->drvcfg.num_reqq_elems = BFA_REQQ_NELEMS_MIN;
 cfg->drvcfg.num_rspq_elems = BFA_RSPQ_NELEMS_MIN;
 cfg->drvcfg.min_cfg = BFA_TRUE;
}
