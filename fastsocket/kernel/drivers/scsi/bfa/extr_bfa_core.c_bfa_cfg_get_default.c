
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* delay_comp; void* ioc_recover; int path_tov; int num_sboot_luns; int num_sboot_tgts; int num_sgpgs; int num_rspq_elems; int num_reqq_elems; } ;
struct TYPE_3__ {scalar_t__ num_fwtio_reqs; int num_cqs; int num_uf_bufs; int num_fcxp_reqs; int num_tskim_reqs; int num_ioim_reqs; int num_rports; int num_lports; int num_fabrics; } ;
struct bfa_iocfc_cfg_s {TYPE_2__ drvcfg; TYPE_1__ fwcfg; } ;


 void* BFA_FALSE ;
 int BFA_FCPIM_PATHTOV_DEF ;
 int DEF_CFG_NUM_CQS ;
 int DEF_CFG_NUM_FABRICS ;
 int DEF_CFG_NUM_FCXP_REQS ;
 int DEF_CFG_NUM_IOIM_REQS ;
 int DEF_CFG_NUM_LPORTS ;
 int DEF_CFG_NUM_REQQ_ELEMS ;
 int DEF_CFG_NUM_RPORTS ;
 int DEF_CFG_NUM_RSPQ_ELEMS ;
 int DEF_CFG_NUM_SBOOT_LUNS ;
 int DEF_CFG_NUM_SBOOT_TGTS ;
 int DEF_CFG_NUM_SGPGS ;
 int DEF_CFG_NUM_TSKIM_REQS ;
 int DEF_CFG_NUM_UF_BUFS ;

void
bfa_cfg_get_default(struct bfa_iocfc_cfg_s *cfg)
{
 cfg->fwcfg.num_fabrics = DEF_CFG_NUM_FABRICS;
 cfg->fwcfg.num_lports = DEF_CFG_NUM_LPORTS;
 cfg->fwcfg.num_rports = DEF_CFG_NUM_RPORTS;
 cfg->fwcfg.num_ioim_reqs = DEF_CFG_NUM_IOIM_REQS;
 cfg->fwcfg.num_tskim_reqs = DEF_CFG_NUM_TSKIM_REQS;
 cfg->fwcfg.num_fcxp_reqs = DEF_CFG_NUM_FCXP_REQS;
 cfg->fwcfg.num_uf_bufs = DEF_CFG_NUM_UF_BUFS;
 cfg->fwcfg.num_cqs = DEF_CFG_NUM_CQS;
 cfg->fwcfg.num_fwtio_reqs = 0;

 cfg->drvcfg.num_reqq_elems = DEF_CFG_NUM_REQQ_ELEMS;
 cfg->drvcfg.num_rspq_elems = DEF_CFG_NUM_RSPQ_ELEMS;
 cfg->drvcfg.num_sgpgs = DEF_CFG_NUM_SGPGS;
 cfg->drvcfg.num_sboot_tgts = DEF_CFG_NUM_SBOOT_TGTS;
 cfg->drvcfg.num_sboot_luns = DEF_CFG_NUM_SBOOT_LUNS;
 cfg->drvcfg.path_tov = BFA_FCPIM_PATHTOV_DEF;
 cfg->drvcfg.ioc_recover = BFA_FALSE;
 cfg->drvcfg.delay_comp = BFA_FALSE;

}
