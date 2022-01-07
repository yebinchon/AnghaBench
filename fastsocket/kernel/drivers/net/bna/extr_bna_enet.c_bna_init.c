
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct bnad {int dummy; } ;
struct TYPE_11__ {TYPE_4__* mdl; } ;
struct TYPE_12__ {TYPE_5__ mem_info; } ;
struct bna_res_info {TYPE_6__ res_u; } ;
struct bfa_pcidev {int dummy; } ;
struct TYPE_7__ {int lsb; int msb; } ;
struct TYPE_8__ {TYPE_1__ hw_stats_dma; struct bfi_enet_stats* hw_stats_kva; } ;
struct bna {int ethport; int enet; int ioceth; struct bfa_pcidev pcidev; TYPE_2__ stats; struct bnad* bnad; } ;
struct bfi_enet_stats {int dummy; } ;
struct TYPE_9__ {int lsb; int msb; } ;
struct TYPE_10__ {TYPE_3__ dma; scalar_t__ kva; } ;


 size_t BNA_RES_MEM_T_STATS ;
 int bna_enet_init (int *,struct bna*) ;
 int bna_ethport_init (int *,struct bna*) ;
 int bna_ioceth_init (int *,struct bna*,struct bna_res_info*) ;
 int bna_reg_addr_init (struct bna*,struct bfa_pcidev*) ;

void
bna_init(struct bna *bna, struct bnad *bnad,
  struct bfa_pcidev *pcidev, struct bna_res_info *res_info)
{
 bna->bnad = bnad;
 bna->pcidev = *pcidev;

 bna->stats.hw_stats_kva = (struct bfi_enet_stats *)
  res_info[BNA_RES_MEM_T_STATS].res_u.mem_info.mdl[0].kva;
 bna->stats.hw_stats_dma.msb =
  res_info[BNA_RES_MEM_T_STATS].res_u.mem_info.mdl[0].dma.msb;
 bna->stats.hw_stats_dma.lsb =
  res_info[BNA_RES_MEM_T_STATS].res_u.mem_info.mdl[0].dma.lsb;

 bna_reg_addr_init(bna, &bna->pcidev);


 bna_ioceth_init(&bna->ioceth, bna, res_info);

 bna_enet_init(&bna->enet, bna);
 bna_ethport_init(&bna->ethport, bna);
}
