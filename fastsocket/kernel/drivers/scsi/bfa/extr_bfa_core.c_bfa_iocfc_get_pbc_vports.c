
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfi_pbc_vport_s {int dummy; } ;
struct TYPE_2__ {int nvports; int vport; } ;
struct bfi_iocfc_cfgrsp_s {TYPE_1__ pbc_cfg; } ;
struct bfa_iocfc_s {struct bfi_iocfc_cfgrsp_s* cfgrsp; } ;
struct bfa_s {struct bfa_iocfc_s iocfc; } ;


 int memcpy (struct bfi_pbc_vport_s*,int ,int) ;

int
bfa_iocfc_get_pbc_vports(struct bfa_s *bfa, struct bfi_pbc_vport_s *pbc_vport)
{
 struct bfa_iocfc_s *iocfc = &bfa->iocfc;
 struct bfi_iocfc_cfgrsp_s *cfgrsp = iocfc->cfgrsp;

 memcpy(pbc_vport, cfgrsp->pbc_cfg.vport, sizeof(cfgrsp->pbc_cfg.vport));
 return cfgrsp->pbc_cfg.nvports;
}
