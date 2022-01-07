
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_ioc_s {TYPE_1__* ioc_hwif; } ;
struct TYPE_3__ {int ioc_isr_mode_set; int ioc_map_port; int ioc_reg_init; int ioc_pll_init; } ;


 int bfa_ioc_ct_isr_mode_set ;
 int bfa_ioc_ct_map_port ;
 int bfa_ioc_ct_pll_init ;
 int bfa_ioc_ct_reg_init ;
 int bfa_ioc_set_ctx_hwif (struct bfa_ioc_s*,TYPE_1__*) ;
 TYPE_1__ hwif_ct ;

void
bfa_ioc_set_ct_hwif(struct bfa_ioc_s *ioc)
{
 bfa_ioc_set_ctx_hwif(ioc, &hwif_ct);

 hwif_ct.ioc_pll_init = bfa_ioc_ct_pll_init;
 hwif_ct.ioc_reg_init = bfa_ioc_ct_reg_init;
 hwif_ct.ioc_map_port = bfa_ioc_ct_map_port;
 hwif_ct.ioc_isr_mode_set = bfa_ioc_ct_isr_mode_set;
 ioc->ioc_hwif = &hwif_ct;
}
