
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_s {int dummy; } ;
struct bfa_pcidev_s {int dummy; } ;
struct TYPE_4__ {int delay_comp; int path_tov; } ;
struct TYPE_3__ {int num_tskim_reqs; int num_rports; int num_ioim_reqs; } ;
struct bfa_iocfc_cfg_s {TYPE_2__ drvcfg; TYPE_1__ fwcfg; } ;
struct bfa_fcpim_s {int * profile_start; int * profile_comp; int delay_comp; int path_tov; int num_tskim_reqs; int num_itnims; struct bfa_s* bfa; struct bfa_fcp_mod_s* fcp; } ;
struct bfa_fcp_mod_s {struct bfa_s* bfa; struct bfa_fcpim_s fcpim; } ;


 int bfa_ioim_attach (struct bfa_fcpim_s*) ;
 int bfa_itnim_attach (struct bfa_fcpim_s*) ;
 int bfa_trc (struct bfa_s*,int ) ;
 int bfa_tskim_attach (struct bfa_fcpim_s*) ;

__attribute__((used)) static void
bfa_fcpim_attach(struct bfa_fcp_mod_s *fcp, void *bfad,
  struct bfa_iocfc_cfg_s *cfg, struct bfa_pcidev_s *pcidev)
{
 struct bfa_fcpim_s *fcpim = &fcp->fcpim;
 struct bfa_s *bfa = fcp->bfa;

 bfa_trc(bfa, cfg->drvcfg.path_tov);
 bfa_trc(bfa, cfg->fwcfg.num_rports);
 bfa_trc(bfa, cfg->fwcfg.num_ioim_reqs);
 bfa_trc(bfa, cfg->fwcfg.num_tskim_reqs);

 fcpim->fcp = fcp;
 fcpim->bfa = bfa;
 fcpim->num_itnims = cfg->fwcfg.num_rports;
 fcpim->num_tskim_reqs = cfg->fwcfg.num_tskim_reqs;
 fcpim->path_tov = cfg->drvcfg.path_tov;
 fcpim->delay_comp = cfg->drvcfg.delay_comp;
 fcpim->profile_comp = ((void*)0);
 fcpim->profile_start = ((void*)0);

 bfa_itnim_attach(fcpim);
 bfa_tskim_attach(fcpim);
 bfa_ioim_attach(fcpim);
}
